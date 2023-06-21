---
# An instance of the Experience widget.
# Documentation: https://wowchemy.com/docs/page-builder/
widget: experience

# This file represents a page section.
headless: true

# Order that this section appears on the page.
weight: 40

title: Experience
subtitle:

# Date format for experience
#   Refer to https://wowchemy.com/docs/customization/#date-format
date_format: Jan 2006

# Experiences.
#   Add/remove as many `experience` items below as you like.
#   Required fields are `title`, `company`, and `date_start`.
#   Leave `date_end` empty if it's your current employer.
#   Begin multi-line descriptions with YAML's `|2-` multi-line prefix.
experience:
  - title: PhD Researcher in Robotics and Autonomous Systems
    company: Bristol Robotics Laboratory, University of Bristol
    company_url: 'https://www.fasrcope.bris.ac.uk/'
    company_logo: uob
    location: Bristol, UK
    date_start: '2018-09-18'
    date_end: ''
    description: |2-
      My research is focused on investigating the practical use of **multi-drone** and **multi-agent systems**.
      In particular, how the whole system can remain robust and reliable in the prescence of failures.
      The specific focus is on developing **failure-aware multi-drone algorithms for coverage path planning** for use in structural and infrastructure inspection. This work includes the following:

      * Proposed a novel probabilistic framework for evaluation the reliability of a path plan called Reliability-Aware Multi-Agent Coverage Path Planning (RA-MCPP)
      * Designed and developed software infrastructure for multi-drone flight known as [*Starling*](project/starling) using ROS2, PX4, Docker and Kubernetes.
      * Investigating Online Reliabity-Aware Coverage Path Planning and its feasibility.

      Supervised by Professor Arthur Richards (Bristol) and Professor Mahesh Sooriyabandara (Tohisba). Funded by ESPRC [FASRCOPE Center for Doctoral Training](https://www.farscope.bris.ac.uk) in robotics and autonomous systems.
  - title: Research Associate
    company: University of Bristol
    company_url: 'https://www.bristol.ac.uk/'
    company_logo: uob
    location: Bristol, UK
    date_start: '2023-04-01'
    date_end: '2024-04-01'
    description: |2-
        Responsibile for the development, generation and testing of a novel drone vertiport approach and depature topologies and operations.
        Collaboration with with [Hirad Gourdazi](https://www.linkedin.com/in/hirad-goudarzi-962503a8/), supervised by Prof. Arthur Richards.

        * Software and hardware integration of a GUI mavlink, mavlink-router and mavp2p for safe multi-drone flight.
        * Investigating optimisation of optimal spatial topologies.
  - title: Teaching Associate
    company: University of Bristol
    company_url: 'https://www.bristol.ac.uk/'
    company_logo: uob
    location: Bristol, UK
    date_start: '2022-06-01'
    date_end: '2022-09-30'
    description: |2-
        Responsible for providing teaching and support of the MSc Aerial Robotics MSc Programme.

        * Delivered lectures on the developed Starling system and ran weekly software tutorials.
        * Supervised 7 MSc students for their final year projects on multipel different topics including path planning, marsupial robot control and bluetooth communications.
  - title: Research Associate
    company: University of Bristol
    company_url: 'https://www.bristol.ac.uk/'
    company_logo: uob
    location: Bristol, UK
    date_start: '2021-12-04'
    date_end: '2022-02-25'
    description: |2-
        Responsibile for the development and testing of a novel motion planning algorithm on a real drone.
        I worked closely with [Dr Saurabh Upadhyay](https://uk.linkedin.com/in/saurabh-upadhyay-cranfield) on re-implementing his fast motion planner for UAVs. I extended his algorithm to a receeding horizon formulation to enable dynamic reaction and obstacle avoidance.

        * Re-implemnted from MATLAB to RUST for greater performance on a Raspberry Pi.
        * Integrated the motion planner into a deployable container for the Starling system in the BRL Flight Arena.
        * Performed simulated and real testing of the motion planner on real UAVs.
  - title: Lead Project Manager and Developer for Outreach Project
    company: University of Bristol
    company_url: 'https://www.bristol.ac.uk/'
    company_logo: uob
    location: Bristol, UK
    date_start: '2021-04-21'
    date_end: '2021-06-18'
    description: |2-
        Developed and publically released an educational game submission for the UK-RAS 2021 Robotics Week.
        I lead a team of 7 volunteer postgraduate students through the planning and development of the **RoC-Ex: Robotics Cave Explorer** game. The game is designed to teach children and teenagers how a robot senses the world and its environment through the exploration of a cave.

        As the voluntary project manager, I suggested and pushed for methods to ensure that we would complete in time. This included organising 2 weekend "hackathon sessions" in which we all sat together to develop the game. As a developer, my responsibility was to integrate the models and missions into the Godot game engine, and to setup deployment and delivery of the game.

        The game was successfully released to the general public with currently over 600 hits. [RoC-Ex is still available online here.](https://farscope-outreach.co.uk/) and more details are available in [the RoC-Ex project post](project/rocex)

  - title: PhD Research Intern
    company: Toshiba Europe Ltd, Toshiba Bristol Research and Innovation Laboratory (BRIL)
    company_url: 'https://www.toshiba.eu/pages/eu/Bristol-Research-and-Innovation-Laboratory/'
    company_logo: toshiba
    location: Bristol, UK
    date_start: '2020-12-15'
    date_end: '2021-03-14'
    description: |2-
        Started protype development on the Starling Muli-UAV Infrastructure for development, deployment and testing of UAV applications.
  - title: Summer Research Intern
    company: Samsung Research and Development Institute
    company_url: 'https://research.samsung.com/sruk'
    company_logo: samsung
    location: Staines-upon Thames, London, UK
    date_start: '2017-06-01'
    date_end: '2017-09-01'
    description: |2-
        Tasked to explore and analyse a large distributed dataset.
        I introduced the use of cluster computing with Apache Spark and build analysis tools with Spark an Pandas for data analysis

        I then implemented a novel recommendation engine model known as Collaborative Deep Learning in Distributed Tensorflow.

design:
  columns: '2'
---
