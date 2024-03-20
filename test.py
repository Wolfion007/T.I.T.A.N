import os
from ultralytics import YOLO
import cv2

VIDEOS_DIR = os.path.join('.', 'G:/JAYASURYA/NEW OWN IN 2023/POSSIBILITIES/YOLO CUSTOM OBJECT DETECTION/videos')
video_path = os.path.join(VIDEOS_DIR, 'friend_tanker.mp4')
video_path_out = '{}_out.mp4'.format(video_path)

cap = cv2.VideoCapture(video_path)

if not cap.isOpened():
    print("Error: Could not open video file.")
    exit()

H, W = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT)), int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
out = cv2.VideoWriter(video_path_out, cv2.VideoWriter_fourcc(*'MP4V'), int(cap.get(cv2.CAP_PROP_FPS)), (W, H))

model_path = os.path.join('G:/JAYASURYA/NEW OWN IN 2023/POSSIBILITIES/YOLO CUSTOM OBJECT DETECTION/yolov8n.pt')

# Load a model
model = YOLO(model_path)  # load a custom model

threshold = 0.5

while True:
    ret, frame = cap.read()

    if not ret:
       
        cap.set(cv2.CAP_PROP_POS_FRAMES, 0)
        continue

    results = model(frame)[0]

    if results:
        for result in results[0]:
            x1, y1, x2, y2, score, class_id = result[::]

            if score > threshold:
                cv2.rectangle(frame, (int(x1), int(y1)), (int(x2), int(y2)), (0, 255, 0), 4)
                cv2.putText(frame, results.names[int(class_id)].upper(), (int(x1), int(y1 - 10),
                            cv2.FONT_HERSHEY_SIMPLEX, 1.3, (0, 255, 0), 3, cv2.LINE_AA))

    out.write(frame)
    cv2.imshow('Object Detection', frame)
    
    key = cv2.waitKey(1)
    if key == ord('q'):
        break

cap.release()
out.release()
cv2.destroyAllWindows()

