import numpy as np
import cv2
from matplotlib import pyplot as plt
import sys
import sqlite3

# Citation: image processing code was inspired by: https://stackoverflow.com/a/33327139/2302781

# db = sqlite3.connect("../db/development.sqlite3")
db = sqlite3.connect("/Users/leishman/Documents/stanford/courses/cs294s/annie/db/development.sqlite3")

target_id = int(sys.argv[1])

img_path = "/Users/leishman/Documents/stanford/courses/cs294s/annie/public/uploads/target/image/" + str(target_id) + "/target.jpg"

img = cv2.imread(img_path)

img_thresholded = cv2.inRange(img, (200, 200, 200), (255, 255, 255))

cv2.imwrite('thresh.jpg', img_thresholded)

kernel = np.ones((10,10),np.uint8)

# erode, then dilate to remove noise
opening = cv2.morphologyEx(img_thresholded, cv2.MORPH_OPEN, kernel)

cv2.imwrite('morph.jpg', opening)

# find contours in new image
contours, hierarchy = cv2.findContours(opening.copy(), cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)

i = 0
for contour in contours:
    (x,y),radius = cv2.minEnclosingCircle(contour)
    center = (int(x),int(y))
    radius = int(radius)
    # label circles
    cv2.circle(img,center,radius,(0,0,255),2)
    position = (center[0] - 10, center[1] + 10)
    text_color = (130, 180, 70)
    cv2.putText(img, str(i + 1), position, cv2.FONT_HERSHEY_SIMPLEX, 1, text_color, 3)
    tup = (target_id, x, y)
    db.execute("INSERT INTO shots(target_id, x_pos, y_pos) VALUES(?, ?, ?)", tup)
    db.commit()
    i += 1

new_img_path = img_path.replace("target.jpg", "target_processed.jpg")

cv2.imwrite(new_img_path, img)