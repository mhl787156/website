---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Real Time Semantic Segmentation with SLAM for Gaze Intention Decoding
subtitle: ''
summary: ''
authors:
- Mickey Li
- Aldo Faisal
tags: []
categories: []
date: '2018-01-01'
lastmod: 2022-09-17T17:04:05+01:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
publishDate: '2022-09-17T16:04:05.074355Z'
publication_types:
- '7'
abstract: 'Understanding the human gaze’s role in conveying intention is an important
  step in developing intuitive controls for human-in-the-loop robotics which could
  aid those who are physically disabled, among many other applications which involve
  direct human interaction. Recent work has primarily focused on studying gaze using
  a 2D ego-centric view of a screen. However, this does not reflect reality, where
  the 3D environment around us affects our gaze. To decode 3D gaze intention from
  an ego-centric perspective, we need to know what the subject is looking at, how
  the subject is looking at it and where that object is in relation to the user in
  3D space. In this work, we use recent improvements in the fields of object detection,
  semantic segmentation and simultaneous localisation and mapping to build a system
  which can both map and label the 3D environment in real-time through RGB-D data
  from an ego-centric point of view. This has resulted in a novel sparse semantic/instance
  segmentation method, based on the YOLO object detection network, which we have titled
  “YoloMask”. After initial training, YoloMask performs 7 times faster at inference
  than the state of the art. Following this we also present an extended version of
  SemanticFusion, an existing semantic SLAM algorithm, by incorporating our YoloMask
  network into it, expanding the number of detectable classes from the original 17
  to 80, while providing a speed increase allowing it to run in real-time. In line
  with the gaze intention detection aim of this work, we also built a modular gaze
  tracking tool which supports commercial eye-tracking glasses and is used as an experiment
  runner to collect large amounts of data on human gaze behaviour. This report documents
  the development, implementation, training and evaluation of each of these systems.
  The outcomes of this work will hopefully provide the building blocks for further
  research into 3D gaze intention decoding. '
publication: '*Department of Computer Science, Imperial College, London*'
links:
- name: URL
  url: https://cloud.mickeyhl.li/index.php/apps/files/?dir=/Documents/GG41%20JMC%20Imperial/Projects/MEng_Final_Project&openfile=10238
url_pdf: https://cloud.mickeyhl.li/index.php/apps/files/?dir=/Documents/GG41%20JMC%20Imperial/Projects/MEng_Final_Project&openfile=10238
---

*Joint Mathematics and Computing Integrated Masters Thesis*