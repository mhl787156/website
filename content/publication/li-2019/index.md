---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Investigating Robustness in Multi-Agent 3D Coverage Path Planning for Structural
  Inspection
subtitle: ''
summary: ''
authors:
- Mickey Li
- Arthur Richards
tags: []
categories: []
date: '2019-01-01'
lastmod: 2022-09-17T11:19:53+01:00
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
publishDate: '2022-09-17T10:24:19.985459Z'
publication_types:
- '7'
abstract: Structural Inspection is a key part of the maintenance and upkeep life-cycle
  for every piece of infrastructure we have built and will build. However it still
  remains diﬃcult, expensive, time consuming and, above all, dangerous for engineers
  to inspect and maintain many of the larger and taller structures out there. With
  the rise in consumer electronics leading the development of cheap and low cost Unmanned
  Aerial Vehicles (UAVs), these devices have the potential to make structural inspection
  not only safer, but more eﬃcient and cheaper. We believe that a multi-agent solution
  can provide the user with a more eﬃcient and crucially, a more robust method for
  structural inspection compared to the single-agent methods used today. With this
  project, we have sought to identify and understand the main features of the robust
  structural inspection problem so that we can develop a solution which can be applied
  to a real life scenario. We have developed and validated a novel evaluation metric
  for a speciﬁc class of coverage solutions which aim to divide up a single cyclical
  tour of the environment into multiple static, non-reactive, agent trajectories,
  one for each agent. We then question the static assumption of the previous method
  and conduct a brief exploration of the use of dynamic re-routing methods. Finally,
  we build a new simulation environment with GPU acceleration based on the AVSCPP
  planner using C++, OpenGL, PCL and Octomap libraries, upon which we applied some
  of the methods we discuss with the aim of observing the eﬀect of true spatial location
  on these coverage methods, as well as provide a foundation for future implementations.
publication: ''
---
