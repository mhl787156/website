---
title: The Forest at the Bristol Festival of Nature 2023
subtitle: An interactive audio-visual experiment - we invite you to explore the sounds of nature vs. urban environments and create as a collective a soundscape harmonizing the two, often, opposing forces. The story of its initial conception, design, development, implementation and installation for the public.

# Summary for listings and search engines
summary: The forest for the festival of nature in bristol.

# Link this post with a project
projects: [theforest]

# Date published
date: '2023-06-22T00:00:00Z'

# Date updated
lastmod: '2023-06-22T00:00:00Z'

# Is this an unpublished draft?
draft: false

# Show this page in the Featured widget?
featured: true

# Featured image
# Place an image named `featured.jpg/png` in this page's folder and customize its options here.
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/CpkOjOcXdUY)'
  focal_point: ''
  placement: 2
  preview_only: false

authors:
  - Mickey Li
  - Suet Lee

tags:
  - Outreach

categories:
  - Outreach
---


{{< toc >}}

## Introduction

In this project we have two "pillars", one representing natural environments and the other representing urban environments/human activity. The aim is to create consensus art - the audio-visual results of social interaction between participants.

Sounds are generated from items that participants place on the pillars themselves. This will be a learning experience for participants showing how interconnected human activities are with the natural environment. The overlap between the two will show the harmony that can be achieved between the two seemingly different forces but also the chances of generating a cacophony if there is no equilibrium.

This is an art piece that provides the opportunity for people of all ages to understand the importance of interactions with our natural environment. We hope that this will also inspire children to follow STEM subjects showing that engineering principles can also be used to generate educational art and to provide solutions to climate collapse.

This article goes into some of the designs, challenges and experiences we had throughout the process, sharing photos along the way!

{{< gallery album="posts/the_forest_fon_2023/gen_pics" >}}


## Before The Forest

The concept began a while back when Tom Didiot-Cook presented his work on the Tonnetz music-interaction device in one of the Swarm lunches. The interaction device designated note groups on a hexagonal grid in which the performer would press buttons and it would create some harmonious sound. This peaked my interest as I'd always wanted to try my hand at making some musical device, and the hexagonal patterning of notes was fascinating.

Then In 2022 when visiting the ICRA 2022 conference in Japan, I had the opportunity of visiting the TeamLabs Planets exhibition in Tokyo - and it was amazing, I really could not recommend it enough. The Teamlabs is an interactive art exhibit with numerous all-sensory installations. This include an ankle deep pool with projections of roaming fish with swelling music, a room of hundreds of synchronised dangling LEDs, a room with a giant ceiling projection and rousing music to loose yourself into and many more. This entire experience ignited my interest in developing an audio-visual installation inspired by what we had seen.

An opportunity to try and develop a concept came with the Computer Science Societies Art Hackathon where I convinced Suet to work with me to build upon the Tonnetz concept into something human scale and bigger! In this concept, the floor of a large dome would be comprised of hexagonal pressure pads, building up the tonnetz structure. The pressure pads represent a choice of note, and the interaction of multiple participants could create chords which would be broadcast through the space. We wanted to include a visual element complementing the sonic element by analysing the emergent notes and chords, and projecting a colour-scape onto the dome above.

{{< gallery album="posts/the_forest_fon_2023/tonnetz" >}}

We bit off a little more than we could chew with this particular project - we only had a weekend afterall! We achieved a brief prototype via website and some of the animation, but it didnt' really pan out. I think in this experience we learnt to perhaps temper our expectations a tad! However despite this setback, I think we both enjoyed the experience and wanted to try again with a better plan in mind.


## Designing The Forest

In early April 2023, after the hackathon, Suet and I approached Tom and somehow easily managed to convince him to join our project - building an audiovisual interactive art exhibit. Starting from the hackathon idea, we quickly started brainstorming alternative approaches which might actually be constructable. Ranging from walls with tonnetz on them, placing pre created "chord" blocks, to random moving hexagon tiles, some sort of growth mechanic and others - each including some element of interaction, sound/music generation and emergence.

{{< gallery album="posts/the_forest_fon_2023/initial_idea_sketches" >}}

After going round and round a bit, we returned to the dome idea and developed the hexagonal floor into a set of pillars - with users interacting with tall poles instead of simply standing. Each pillar could have its own speakers and interaction mechanisms - buttons, dynamo cranks and the like. The pillars could then interact with some voting system or whatnot (we never got this far but these are ideas to bring forward anyhow!).

It was also at this time that we started to reach out and look for potential opportunities to develop this installation for. An audience and target event would help guide the design, looks and usage of the system significantly. Tom and Suet had links to Mireia Bes-Garcia who organises the yearly [Bristol Festival of Nature](https://www.bnhc.org.uk/festival-of-nature/) outreach event. We were a tad skeptical going into the initial meeting, but after presenting our concept, she ended up convincing us that our installation could actually work within this event! It was also at this point that we brought Georgios Tzoumas onto the team as he had also wanted to bring something to this festival - I swear this man knows everyone!

Towards the end of April, with all this in mind, we finally settled on an initial concept of pillars in which you could attach patches onto, where each patch triggered a sound to be played locally by that pillar. We also agreed that two pillars was probably the most we could put together (though we wouldn't agree on the look and final design of the pillar until much later on!).

## Finding Some Funding

After talking with Mireia, it became clear that we would need some funding to be able to deliver on our vision. Treating this project as a prototype helped as we only wanted small sums on the order of £500 to £1k. This made it easier to approach numerous internal university funding pools for outreach. This included the engineering faculty (SCEEM and CAME), amongst other possible internal funding pools. Unfortunately it seemed that a lot of the internal pools have been defunded. Fortuantely both the BRl (through FARSCOPE) and the Cabot insitute (thanks Georgios!) were kind enough to step up and offer funding. 

## Prototyping a pillar

We played around wth the idea of patches, attachable objects and linking that to sounds. Concepts we came up with included 

1. Velcro patches to play sound, with detection achieved via RFID reader
2. Power/Volume control with a dynamo like crank
3. Hanging objects on hooks to trigger sounds 
4. Buttons on the tree to enable voting actions 

Looking through these we identified the need for some detection mechanism, and some method of producing sound. With these requirements, we sought to create a tabletop prototype of the internal systems of a single pillar. 

Tom started prototyping the use of RFID readers for detection, and we found two raspberry pi's to act as our onboard compute. Raspberry Pi's were ideal as an audio hat with an onboard amplifier could be easily sourced. A Pi also supports multithreading which is probably required for playing multiple tracks simultaneously (in comparison to an Arduino anyway...). 

### Music Generation

During the hackathon, I attempted to use javascript to play multiple notes and samples simultaneously. Unfortunately a naive approach simply did not work - I could only get one note to play at any time, and also could not easily dynamically generate music. This lead me to read up on sound generation and how multithreading is required to play multiple tracks, and that most synthesisers/music libraries operate on the compile->play methodology rather than a live performance type. 

Bringing this forward, after spearking to some colleagues, I settled on using [Sonic-Pi](https://sonic-pi.org) as our music generation program. Sonic-Pi is actually a fantastic program - it was designed to teach programming through music, but has been used a lot for "live coding" DJ performances at clubs and raves. It's syntax is dervied from ruby, but essentially surfaces its own language for the live playing of multi-track pieces. In particular the `live_loop` functionality allows for the live editing of indefinite running sample loops. Sonic-Pi also supports sending and receiving external signals such as OSC (open sound) messages and midi messages - designed for interfacing with programs such as Ableton Live. 

Therefore I settled on the following two part architecture.

1. A Python script which can read from sensors, RFIDs and generally manage the running of a pillar. When a sound needs to be played, it will send an OSC message to Sonic-Pi
2. Sonic-Pi running a listening script, and on receive of an OSC message will trigger the playing (or stopping) of a particular sound sample.

From the above requirements, there only needs to be two messages: (1) start and (2) stop, with both including the name of the music sample. The Sonic-Pi script is therefore comprised of two blocking listeners on these messages. The start message then creates a new thread which plays the specified sample with given ramp up and ramp down times. 

Stopping the message was unfortunately more complicated due to the threaded nature. Unfamiliar with sonic-pi's inter-thread comms structures, and unable to leverage the underlying Ruby tools, I devised a method using global lists of currently playing, and currently stopping samples. When playing a sample, the thread busy loops and checks the contents of these global lists. While it worked, it was perhaps somewhat expectedly full of race-conditions and weird hangups. Much closer to the time, I discovered the existence of `cues` and `sync` where a thread blocks until the receipt of a specific cue in an atomic manner. Therefore I replaced the busy waiting with a `sync` and for the stop command to generate a `cue <sample_name>`. This much simpler setup works assuming that a `start` is always followed by a `stop`. A future problem might arise if a thread is started but never stopped, but thankfully that can never happen in our current use case. 

There was one final issue with sonic-pi which we found out on the day which will be discussed later. 

The samples themselves were found on [FreeSound](freesound.org). We were aiming to create ambient sounds from natural or urban phenomena. Therefore I looked for live recordings of waterfalls, birds in forests, storms and so on for "nature".
Closer to the date Avgi also stepped in to help find more sounds for "urban" such as construction, cars on roads, sirens etc. These were externally mixed and placed on each Pi. 

Hardware-wise, the raspberry Pi hat supported up to 12W of speakers. We therefore brough four speakers and wired them up in parallel. It was a bit of a pain getting sound reliably through the speakers until we figured out how to set the default audio device to be the audio hat. We also had issues running sonic-pi in headless mode as sonic-pi is primarily designed to run from the frontend gui. Thankfully this could be solved by `export DISPLAY=:0`, while putting our sonic-pi script in `~/.sonic-pi/config/init.rb`. Later on we also add it as an `autostart` application so that it will start at device desktop boot (Note it did not work as a systemd). 

### Object Detection and RFID 

Tom was a whizz with testing first single RFIDs connected to the Pi, and then working out how to daisychain multiple RFIDs into one Pi. From my understanding the RFIDs connect over the SPI bus. However, each RFID required one extra GPIO pin in order to reset after detecting a read. This made the daisy-chaining of the RFIDs awkward - as seen by the first attempt at soldering! Tom then designed a special set of PCBs, including a custom PI hat and RFID daisychain connectors in order to make wiring them up easier. Software wise, it is simply a case of continually polling the state of all the RFID readers. 

There are two types of RFID tag, ones which can be programmed to store data - such as a sample name, and ones which can only be read for their ID. We bought a number of RFID stickers which could only show their ID. We began with assuming we could do something with the first type, but in the end we decided to use the stickers for our objects, along with a registration procedure - storing the mapping between ID and particular sound sample. 

### LED Control

We wanted individually controllable addressable LEDs to adorn each pillar, with options for generating fun effects. For example when a participant places an object onto the pillar, the LEDs would immediately animate, highlighting that action. In the end we bought 20m of offbrand neopixels off of Amazon. Going from my work with drones, I was hoping that the LEDs could be controlled directly from the Raspberry Pi. After some initial testing, it looked promising even though it was hard to find ready prepared libraries with a large number of effects. However during integration with the RFID we found a huge problem that the two systems would break each other. The LEDs would function properly until an RFID was activated, at which point the RFID would stop functioning. We still do not know the full reasoning, but our hypothesis was that they were sharing the same PWM source, and using one function would interrupt the other. 

With this in mind, we quickly switched over to using an Arduino to control the LEDs, connected to the Pi over serial. Sourcing two arduino UNOs from the flight arena in the BRL, I found some well regarded software called W285fx which included a large number of different pre-programmed effects. I then built a simple Serial parser to allow the Pi to send simple commands to the arduino to change the effect of different segments of the pillar. Other problems appeared later on, but that'll be discussed when we get there!

{{< gallery album="posts/the_forest_fon_2023/electronics" >}}

## Three Weeks and Counting... Time to actually build the things! 

Unfortunately as things do, life gets in the way (I went on holiday to Japan for example! and ICRA 2023 in London!), and we only get back onto the job with two weeks left before the Festival of Nature. We have a whole bunch of internals, but I'm starting to feel nervous as we still had not settled on an actionable design for the pillar itself. We were still orbiting around the idea of either top/middle/bottom segments, or one long tube and also the look - whether we wanted identical pillars or different ones. 

### Virtual Design

For the fun of it, we found one evening to do some virtual design on the look of each pillar. We used my Oculus Quest using Google Titlebrush for Suet and Henry to have a play around to see what they could come up with. The right image is a GIF showing both of them. 

{{< gallery album="posts/the_forest_fon_2023/virtual_design" >}}

### Pillar Design

We really liked the blocky/angular high rise style of the urban contrasted with the more flowy style of the nature pillar. So, after some back and forth we finally settled on a concept. Each pillar would be comprised of a number horizontal slices sparated by a gap. One pillar would be nature styled, using wood, and the other would be urban styled using plastics, metals and other materials. The nature pillar could have bamboo or willow around the outside. However we compromised on modular design where both pillars would be built around some aluminium extrusion where the slices could be slid on and off. 

{{< gallery album="posts/the_forest_fon_2023/pillar_designs_sketch" >}}

A challenging design element was the ability to take down the pillars for transport and disassembly/assembly. This was a conundrum with the nature pillar as we wanted to use the bamboo as an outer shell. In the end we went with dowel struts between each layer so that we could weave once the pillar was constructed. 

### Building and Last Minute Issues

{{< gallery album="posts/the_forest_fon_2023/pillar_build" >}}


## Festival of Nature


## Conclusion
