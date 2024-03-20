import cv2
import os
import imutils
import numpy as np
import tensorflow as tf
from ultralytics import YOLO
os.environ['TF_FORCE_GPU_ALLOW_GROWTH'] = 'true'

# Load YOLO model
yolo_net = YOLO("G:/JAYASURYA/NEW OWN IN 2023/SOFTWARE/YOLO/YOLO CUSTOM OBJECT DETECTION/runs/detect/train2/weights/best.pt","G:/JAYASURYA/NEW OWN IN 2023/SOFTWARE/YOLO/YOLO CUSTOM OBJECT DETECTION/config.yaml")
yolo_net.setPreferableBackend(cv2.dnn.DNN_BACKEND_CUDA)
yolo_net.setPreferableTarget(cv2.dnn.DNN_TARGET_CUDA)

# Load the helmet detection model
model = tf.keras.models.load_model('G:/JAYASURYA/NEW OWN IN 2023/SOFTWARE/YOLO/YOLO CUSTOM OBJECT DETECTION/friend_or_foe.h5')
print('Model loaded!!!')

# Open video capture
cap = cv2.VideoCapture('G:/JAYASURYA/NEW OWN IN 2023/SOFTWARE/YOLO/YOLO CUSTOM OBJECT DETECTION/videos/foe_tanker.mp4')

# Define colors
COLORS = [(0, 255, 0), (0, 0, 255)]

# Get YOLO layer names
layer_names = yolo_net.getLayerNames()
output_layers = [layer_names[i[0] - 1] for i in yolo_net.getUnconnectedOutLayers()]

# Create a video writer
fourcc = cv2.VideoWriter_fourcc(*"XVID")
writer = cv2.VideoWriter('output.avi', fourcc, 5, (888, 500))

# Function to detect helmet or no helmet
def helmet_or_nohelmet(helmet_roi):
    try:
        helmet_roi = cv2.resize(helmet_roi, (224, 224))
        helmet_roi = np.array(helmet_roi, dtype='float32')
        helmet_roi = helmet_roi.reshape(1, 224, 224, 3)
        helmet_roi = helmet_roi / 255.0
        return int(model.predict(helmet_roi)[0][0])
    except Exception as e:
        print(e)
        return None

while True:
    ret, img = cap.read()
    if not ret:
        break
    img = imutils.resize(img, height=500)
    height, width = img.shape[:2]

    blob = cv2.dnn.blobFromImage(img, 0.00392, (416, 416), (0, 0, 0), True, crop=False)

    yolo_net.setInput(blob)
    outs = yolo_net.forward(output_layers)

    confidences = []
    boxes = []
    classIds = []

    for out in outs:
        for detection in out:
            scores = detection[5:]
            class_id = np.argmax(scores)
            confidence = scores[class_id]
            if confidence > 0.3:
                center_x = int(detection[0] * width)
                center_y = int(detection[1] * height)

                w = int(detection[2] * width)
                h = int(detection[3] * height)
                x = int(center_x - w / 2)
                y = int(center_y - h / 2)

                boxes.append([x, y, w, h])
                confidences.append(float(confidence))
                classIds.append(class_id)

    indexes = cv2.dnn.NMSBoxes(boxes, confidences, 0.5, 0.4)

    for i in range(len(boxes)):
        if i in indexes:
            x, y, w, h = boxes[i]
            color = [int(c) for c in COLORS[classIds[i]]]

            if classIds[i] == 0:  # bike
                helmet_roi = img[max(0, y):max(0, y) + max(0, h) // 4, max(0, x):max(0, x) + max(0, w)]
            else:  # number plate
                x_h = x - 60
                y_h = y - 350
                w_h = w + 100
                h_h = h + 100
                cv2.rectangle(img, (x, y), (x + w, y + h), color, 7)
                if y_h > 0 and x_h > 0:
                    h_r = img[y_h:y_h + h_h, x_h:x_h + w_h]
                    c = helmet_or_nohelmet(h_r)
                    if c is not None:
                        cv2.putText(img, ['friend', 'foe'][c], (x, y - 100), cv2.FONT_HERSHEY_SIMPLEX, 2, (0, 255, 0), 2)
                        cv2.rectangle(img, (x_h, y_h), (x_h + w_h, y_h + h_h), (255, 0, 0), 10)

    writer.write(img)
    cv2.imshow("Image", img)

    if cv2.waitKey(1) == 27:
        break

writer.release()
cap.release()
cv2.destroyAllWindows()
