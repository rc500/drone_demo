"""
``aruco_marker_distance.py``: using the aruco bindings
--------------------------------------

This example program takes one command-line argument: the input image to
load which contains aruco markers. The centroid of these markers are then
output to terminal and shown on an image relative to the frame center.
"""
import logging
logging.basicConfig(level = logging.DEBUG)

import os
import sys
from numpy import array
import Image as PImage
import cv

# Where is this file?
this_dir = os.path.abspath(os.path.dirname(__file__))

# Insert a path to load modules from relative to this file
sys.path.insert(0, os.path.abspath(os.path.join(this_dir, '..')))

# Load the aruco module.
from ardrone.aruco import detect_markers

def main():
  """The main entry point of the program."""

  # Check the command-line arcuments.
  if len(sys.argv) < 2:
    print('usage: aruco.py input.png')
    sys.exit(1)

  cv.NamedWindow("test",cv.CV_WINDOW_AUTOSIZE)
  
  # Load image into required formats
  #im = PImage.open(sys.argv[1]).convert('RGB')
  cv_im = cv.LoadImage(sys.argv[1])
  im = PImage.fromstring('RGB',cv.GetSize(cv_im),cv_im.tostring())
  
  # Find midpoint of image
  cv_im_size = cv.GetSize(cv_im)
  cv_im_midp = (cv_im_size[0]/2,cv_im_size[1]/2)
  print cv_im_midp

  #arr = array(im) #will need this if wanting to draw onto image
  
  # Detect markers and draw a line from the frame center to the marker center
  for m in detect_markers(im):
	  coord = (m.centroid_x(), m.centroid_y())
	  print coord
	  print m.id()
	  cv.Line(cv_im,cv_im_midp,coord,cv.Scalar(200,200,200))

  cv.ShowImage("test",cv_im)
  
  cv.WaitKey()


if __name__ == '__main__':
  main()
