from ultralytics import YOLO
import cvzone
import cv2
import math
import time
import Adafruit_IO
import paho.mqtt.client as mqtt
import serial
import pynmea2
import RPi.GPIO as GPIO
from twilio.rest import Client

ADAFRUIT_IO_USERNAME = "MilitryTank"
ADAFRUIT_IO_KEY = "//"
FEED_NAME = "CONTROL"
FEED_NAME1 = "DATA"

# Twilio credentials
TWILIO_ACCOUNT_SID = '//'
TWILIO_AUTH_TOKEN = '//'
TWILIO_PHONE_NUMBER = '//'
RECIPIENT_PHONE_NUMBER = '//'

# Serial port for GPS
ser = serial.Serial("/dev/ttyAMA0", baudrate=9600, timeout=1)

cap = cv2.VideoCapture(0)
model = YOLO('best.pt')
classnames = ['friend_tanker', 'foe_tanker']
RELAY_PIN = 23
LASER_PIN = 18
GPIO.setmode(GPIO.BCM)
GPIO.setup(RELAY_PIN, GPIO.OUT)
GPIO.setup(LASER_PIN, GPIO.OUT) 
confirmation_received = False
confirmations_received = False
confirmation_timestamp = None
GPIO.output(RELAY_PIN, GPIO.LOW)
GPIO.output(LASER_PIN, GPIO.LOW)
SERVO_PIN = 19
GPIO.setup(SERVO_PIN, GPIO.OUT)
servo_pwm = GPIO.PWM(SERVO_PIN, 50) 

# Function to send SMS
def send_sms(message):
    # Initialize Twilio client
    client = Client(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)

    # Send SMS
    message = client.messages.create(
        body=message,
        from_=TWILIO_PHONE_NUMBER,
        to=RECIPIENT_PHONE_NUMBER
    )

    print("SMS sent with SID:", message.sid)

def on_message(client, userdata, msg):
    global confirmation_received, confirmation_timestamp, confirmations_received
    payload = msg.payload.decode("utf-8")
    if payload in ['A', 'B', 'C']:
        print(f"Received: {payload}")
        receive_payload(payload)
        payload_receive(payload)
        confirmation_received = True
        confirmation_timestamp = time.time()

def receive_payload(payload):
    if payload == 'A':
        servo_pwm.start(0)
        for angle in range(0,181,10):
            set_servo_angle(angle)
        set_servo_angle(90)
        GPIO.output(RELAY_PIN, GPIO.HIGH)
        GPIO.output(LASER_PIN, GPIO.HIGH)
        #aio = Adafruit_IO.Client(ADAFRUIT_IO_USERNAME, ADAFRUIT_IO_KEY)
        #aio.send_data(FEED_NAME1, "Target Confirmed")
        send_sms("Target Confirmed")
        print("A Received Confirmed")
        time.sleep(2)
        GPIO.output(RELAY_PIN, GPIO.LOW)
        GPIO.output(LASER_PIN, GPIO.LOW)
    elif payload == 'B':
        GPIO.output(RELAY_PIN, GPIO.LOW)
        GPIO.output(LASER_PIN, GPIO.LOW)
        print("B Received Aborted")
        send_sms("Target Aborted")
        
def payload_receive(payload):
    if payload == 'C':
        servo_pwm.start(0)
        for angle in range(0,181,10):
            set_servo_angle(angle)
        #aio = Adafruit_IO.Client(ADAFRUIT_IO_USERNAME, ADAFRUIT_IO_KEY)
        #aio.send_data(FEED_NAME1, "Target Confirmed Imediatley")
        send_sms("Target Confirmed Imediatley")
        print("C Received Immediate")
        perform_immediate_action()

def perform_immediate_action():
    set_servo_angle(90)
    GPIO.output(RELAY_PIN, GPIO.HIGH)
    GPIO.output(LASER_PIN, GPIO.HIGH)
    time.sleep(2)
    GPIO.output(RELAY_PIN, GPIO.LOW)
    GPIO.output(LASER_PIN, GPIO.LOW)

def gps():
    dataout = pynmea2.NMEAStreamReader()
    newdata = ser.readline()
    if '$GPRMC' in str(newdata):
        print(newdata.decode('utf-8'))
        newmsg = pynmea2.parse(newdata.decode('utf-8'))
        #lat = newmsg.latitude
        #lng = newmsg.longitude
        lat = random.uniform(13.1,13.9)
        lon = random.uniform(18.1,18.9)
        gps_data1 = f"Latitude={lat} and Longitude={lng}"
        gps_data = "Latitude={13.0345} and Longitude={18.0976}"
        print(gps_data)
        return gps_data

# Connect to Adafruit IO MQTT broker

client = mqtt.Client()
client.username_pw_set(ADAFRUIT_IO_USERNAME, ADAFRUIT_IO_KEY)
client.on_message = on_message
client.connect("io.adafruit.com", 1883, 60)
client.subscribe(f"{ADAFRUIT_IO_USERNAME}/feeds/{FEED_NAME}")

# Start the MQTT loop
client.loop_start()

def set_servo_angle(angle):
    duty = angle / 18 + 2
    GPIO.output(SERVO_PIN, True)
    servo_pwm.ChangeDutyCycle(duty)
    time.sleep(1)
    GPIO.output(SERVO_PIN, False)
    servo_pwm.ChangeDutyCycle(0)

while True:
    ret, frame = cap.read()
    frame = cv2.resize(frame, (640, 480))
    result = model(frame, stream=True)

    object_detected = False

    for info in result:
        boxes = info.boxes
        for box in boxes:
            confidence = box.conf[0]
            confidence = math.ceil(confidence * 100)
            Class = int(box.cls[0])
            if confidence > 36:
                object_detected = True
                x1, y1, x2, y2 = box.xyxy[0]
                x1, y1, x2, y2 = int(x1), int(y1), int(x2), int(y2)
                cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 0, 255), 5)
                cvzone.putTextRect(frame, f'{classnames[Class]} {confidence}%', [x1 + 8, y1 + 100],
                                   scale=1.5, thickness=2)
                
                #gps_data = gps()
                #aio = Adafruit_IO.Client(ADAFRUIT_IO_USERNAME, ADAFRUIT_IO_KEY)
                #aio.send_data(FEED_NAME1, gps_data)
                send_sms("Target Detected")

    if object_detected:
        if not confirmation_received:
            print("Waiting for confirmation...")
            start_time = time.time()
            while not confirmation_received:
                elapsed_time = time.time() - start_time
                if elapsed_time > 60: #change  here if u want
                    print("No confirmation received within 30 seconds. Aborting target.")
                    #aio = Adafruit_IO.Client(ADAFRUIT_IO_USERNAME, ADAFRUIT_IO_KEY)
                    #aio.send_data(FEED_NAME1, "No confirmation received within 30 seconds. Aborting target.")
                    receive_payload('B')
                    cv2.destroyAllWindows()
                    break

    cv2.imshow('frame', frame)
    cv2.waitKey(1)

GPIO.cleanup()
client.loop_stop()
