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

{{< gallery album="posts/the_forest_fon_2023/gen_pics" resize_options="500x500" >}}


## Before The Forest

The concept began a while back when Tom Didiot-Cook presented his work on the Tonnetz music-interaction device in one of the Swarm lunches. The interaction device designated note groups on a hexagonal grid in which the performer would press buttons and it would create some harmonious sound. This peaked my interest as I'd always wanted to try my hand at making some musical device, and the hexagonal patterning of notes was fascinating.

Then In 2022 when visiting the ICRA 2022 conference in Japan, I had the opportunity of visiting the TeamLabs Planets exhibition in Tokyo - and it was amazing, I really could not recommend it enough. The Teamlabs is an interactive art exhibit with numerous all-sensory installations. This include an ankle deep pool with projections of roaming fish with swelling music, a room of hundreds of synchronised dangling LEDs, a room with a giant ceiling projection and rousing music to loose yourself into and many more. This entire experience ignited my interest in developing an audio-visual installation inspired by what we had seen.

An opportunity to try and develop a concept came with the Computer Science Societies Art Hackathon where I convinced Suet to work with me to build upon the Tonnetz concept into something human scale and bigger! In this concept, the floor of a large dome would be comprised of hexagonal pressure pads, building up the tonnetz structure. The pressure pads represent a choice of note, and the interaction of multiple participants could create chords which would be broadcast through the space. We wanted to include a visual element complementing the sonic element by analysing the emergent notes and chords, and projecting a colour-scape onto the dome above.

{{< gallery album="posts/the_forest_fon_2023/tonnetz" resize_options="500x500" >}}

We bit off a little more than we could chew with this particular project - we only had a weekend afterall! We achieved a brief prototype via website and some of the animation, but it didnt' really pan out. I think in this experience we learnt to perhaps temper our expectations a tad! However despite this setback, I think we both enjoyed the experience and wanted to try again with a better plan in mind.


## Designing The Forest

In early April 2023, after the hackathon, Suet and I approached Tom and somehow easily managed to convince him to join our project - building an audiovisual interactive art exhibit. Starting from the hackathon idea, we quickly started brainstorming alternative approaches which might actually be constructable. Ranging from walls with tonnetz on them, placing pre created "chord" blocks, to random moving hexagon tiles, some sort of growth mechanic and others - each including some element of interaction, sound/music generation and emergence.

{{< gallery album="posts/the_forest_fon_2023/initial_idea_sketches" resize_options="500x500" >}}

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

With this in mind, we quickly switched over to using an Arduino to control the LEDs, connected to the Pi over serial. Sourcing two arduino UNOs from the flight arena in the BRL, I found some well regarded software called WS285fx which included a large number of different pre-programmed effects. I then built a simple Serial parser to allow the Pi to send simple commands to the arduino to change the effect of different segments of the pillar. 

After messing with Arduino UNO, we were finding that it was struggling to light up all 400 or so LEDs that we had allocated for each pillar. It turns out that the UNO only has 2Kb of memory, and that it was likely that it simply did not have enough memory to store the state of each LED. Each LED takes 3 bytes to store its state, so 400 * 3 gives 1200 bytes or 1.2Kbs! If you include the size of the effects library, its highly likely that this was the problem. Therefore we frantically tried to find a compatible microcontroller. Thankfully one of the BRL technicians had some ESP8266s at hand which have 32Mb of RAM which is more than enough. This had its own problems as it does not provide a 5V line, and we had to take it from the Raspberry Pi - causing concerns that it might be drawing down the Pi power supply. Later we replace these ESP8266s with Arduino Mega (clones) with 32Kbs of memory and could provide the 5V lines via external power supply. Although other problems appeared later on, but that'll be discussed when we get there!

{{< gallery album="posts/the_forest_fon_2023/electronics" resize_options="500x500">}}

## Three Weeks and Counting... Time to actually build the things! 

Unfortunately as things do, life gets in the way (I went on holiday to Japan for example! and ICRA 2023 in London!), and we only get back onto the job with two weeks left before the Festival of Nature. We have a whole bunch of internals, but I'm starting to feel nervous as we still had not settled on an actionable design for the pillar itself. We were still orbiting around the idea of either top/middle/bottom segments, or one long tube and also the look - whether we wanted identical pillars or different ones. At this point, we also brought Henry onboard to help out in the final stages! 

### Virtual Design

For the fun of it, we found one evening to do some virtual design on the look of each pillar. We used my Oculus Quest using Google Titlebrush for Suet and Henry to have a play around to see what they could come up with. The right image is a GIF showing both of them. 

{{< gallery album="posts/the_forest_fon_2023/virtual_design" resize_options="500x500" >}}

### Pillar Design

We really liked the blocky/angular high rise style of the urban contrasted with the more flowy style of the nature pillar. So, after some back and forth we finally settled on a concept. Each pillar would be comprised of a number horizontal slices sparated by a gap. One pillar would be nature styled, using wood, and the other would be urban styled using plastics, metals and other materials. The nature pillar could have bamboo or willow around the outside. However we compromised on modular design where both pillars would be built around some aluminium extrusion where the slices could be slid on and off. 

{{< gallery album="posts/the_forest_fon_2023/pillar_designs_sketch" >}}

A challenging design element was the ability to take down the pillars for transport and disassembly/assembly. This was a conundrum with the nature pillar as we wanted to use the bamboo as an outer shell. In the end we went with dowel struts between each layer so that we could weave once the pillar was constructed. 

I came up with the overall shape of the nature pillar using sculpting in Blender, and passed that onto Henry to convert into multiple slices. Tom augmented the slicing with 20cm spacing to include space for dowels so that it could be built in sections. Through lots of discussion between myself and Tom, we went with acrylic sheeting for the Urban pillar and a simple repetitive slice which could be continually rotated to change the topologies. Each slice would be connected to the next via vertical slats which could also house the speakers. We chose to go with the slices as it could be more easily lasercut, as opposed to molded, 3D printed or other method. 

### Building and Last Minute Issues

With only a few days left we finally got down to building it. We began with the urban pillar where I would sort out the electronics while Tom went ahead with designing the slices. In the end for simplicity, we decided to put the LEDs in the extrusion channel as they would be protected and it would be simple to install. The next day we did a long shift where we put together the nature pillar in the flying arena and performed integration testing with everything in place. 

It mostly went smoothly with only some hiccups. The LEDs were a bit painful to attach as we were plagued with annoying soldering jobs and dodgy connections. Since each slice slides down the extrusion, the LED wires at the top of each pillar have a tendancy of getting caught and breaking. We also had some issues with wiring the RFIDs since we only had a limited number of breakout boards, with the rest manually soldered. With this limitation we were judicious with the placement. Wires in general were a bit of a pain as they were trailing everywhere up and down! We also decided to install a couple of screens for each of the Pis as it would be useful in debugging sonic-pi issues over the connection (I also enabled VNC on the Pis, though the connection was awful over wifi).

That being said, the integration between the whole team was pretty successful with a full test of the system coming online, and sounds being produced at 3am in the prescence of myself, Tom and Georgios on the Friday before the weekend of FoN!  

{{< gallery album="posts/the_forest_fon_2023/pillar_build" resize_options="500x500" >}}

## Festival of Nature

The day finally arrives and we have to pack up and prepare for the festival (FoN)! Throughout the build process we have been talking to the organisers about what facilities we have available and what we need! We've been allocated a space inside the University of Bristol tent, but also they have found a space outside the tent in which we can put our exhibit. The thought was that if our exhibit made lots of noise, we probably didn't want to drown out everyone else! The setup would happen on the Friday afternoon with the event itself happening on Sat 10-6, and Sun 10-5! Special thanks to Sergio and Khulud also popped along to help out man the stand over the weekend.  

### Setup

After our late-nighter building the pillars, we had some last minute adjusments to do on Friday - mainly in converting the LEDs to use the arduino megas and making them do something interesting. There was also ongoing weirdness with sonic-pi and how there seemed to be some sort of race condition, and why I switched from using global lists to using `cue/sync` inside the sonic-pi loop. 

The time came to setup, and so Tom drove down each pillar one at a time. First the nature pillar while I continued to debug, and help Avgi print out posters and materials for the weekend, followed by the urban pillar afterwards. I cycled down to help setup the pillars and stayed to make sure they were working for the next day - finally ran a test with both pillars together! Suet and Georgios got there a little earlier so they started to decorate the nature pillar with some willow as well. 

{{< gallery album="posts/the_forest_fon_2023/fon_setup" resize_options="500x500" >}}

### Day 1

Cycling down early in the morning, I had a number of things to check and complete before the opening! For a start it had been raining heavily the night before, so I put up the gazebo - had the effect of making a cozyier self contained space which was nice. Next I made sure that both pillars were still turning on and working like expected - and they (for now) were. Did have some issues with sonic-pi crashing every 20 minutes or so which plagued us for the whole day. The LEDs seemed to work okay - but we ran into a weird problem where plugging in the arduino mega would cause the screen to turn off! The LEDs would still function, but unable to properly control them unfortunately. This might have been caused by the external power supply to the arduino feeding power back through the PI USB, tripping up the USB power supply to the monitor. My main job was setting up both sonic-pi and the python script to start automatically so that I did not need to be connected and run things through my laptop. 

Nevertheless at around 10, people started filtering in. We were a little late to start, but after finally getting round to registering objects, we started letting people interact with our piece at around 11! 

{{< gallery album="posts/the_forest_fon_2023/fon_day1" resize_options="500x500" >}}

It was great seeing the range of adults and kids interacting with the piece! The emergence of doodling on the urban pillar was fantastic - really showing the range of activies, and giving it that urban graffiti flavour. Quite a few kids and adults working out how to interact with the pillars themselves and enjoying playing around with the sounds themselves. 

The interaction was well received. Initially there was a bit of confusion through using the language of "tap" or "put" where participants would tap the objects on the RFID readers. This unfortunately had the effect of crashing the system as it gets confused! Quite a number of participants also thought that the detection happened by weight - with quite a few pressing down on the pads thinking that it would react quicker! Another issue was speed of response - some of the samples were either quiet, or took some time to start producing sounds which left participants confused and tapping again and again thinking that it wasnt being read. Using the language of *"gently place"* and *"wait for the sound"* helped to solve some of these issues! In addition placing the table in front worked out quite well at managing people flow, such that we would only have up to 10 people interacting at any one time. 

While all this was happening, I was busy working through the bugs and issues which cropped up during the day. As mentioned, the pillars seemed to crash every 20 to 30 minutes for some unknown reason, requiring a restart often! The inconsistency in breaking time made me suspect a memory issue, or an interaction issue - identifying that the program could get stuck if an object was left on a pad never stopping, or too many samples were loaded and the PI ran out of memory. There were periods of time where only one of the pillars was functional while I tried to debug the other! Towards the end of the day we were getting many `The Thread is behind time` errors in sonic-pi, causing the pillar to not play anything whatsoever. Therefore that night I looked into sonic-pi thread and syncrhonisation problems, while Avgi went in and shortened all of the tracks to 30 seconds long to ensure that they all fit into memory. 

### Day 2

The second day started hectic again (thanks first bus for not showing up so making me cycle down...) with Avgi and I putting in our hot fixes from the previous night. I made changes to finally include the use of `cue/sync` as well as pre-loading of the samples using `load_samples` which was possibly due to the smaller size of the samples. Our hunch was that the loading time of some of the samples was causing that thread to block for too long, thereby emitting `Thread is behind time` errors. After fixing those errors we re-registered all of the objects (including a few where the RFID stickers themselves had been damanged) so that they made a bit more sense and slowly opened up the stand. 

Unfortunately we also found that the Urban pillar arduino was giving inconsistent voltages to the LEDs causing them to not light up - we gave up on that one for now as the Urban pillar decided to stop working at around 10am. I spent most of the day tearing my hair out trying to work out what was happening - the samples were being recognised, and being sent to Sonic-pi, but sonic-pi simply would not play them for any reason! By about midday, we resigned outselves to leaving that pillar as broken and treating it as a fun whiteboard. I came back to look at it later in the day, and actually found a solution (after almost taking the nuclear option and re-flashing the PI...). Turns out simply changing the name of the samples folder, and all references in the sonic-pi code while removing the `load_samples` fixed the playing. Our hunch is that `load_samples` places the samples in a cache somewhere along with the path names, but something somewhere had caused those path names to go out of date, pointing to locations which no longer contained the cahced files. Therefore when a sample was requested, it would come up blank. Changing the location of the samples would register the paths as new paths and would sucessfully load up the samples. Since the samples are smaller now, they can be dynamically loaded without causing out of sync errors! 

With these changes made, the pillars ended up being much more reliable, lasting the rest of the day without any issues and requiring no more restarts! In terms of interaction, we got loads of people through as well, continually playing with the sounds. It was nice to get a chance to talk to more of the public and see what they thought - lots of interesting questions ranging from "whats the point of all this?" to "what has this got to do with robotics" to "Whats the technology stack you are uing in each pillar". It was great talking to everyone and seeing the vast array of views and thoughts on our installation. 

{{< gallery album="posts/the_forest_fon_2023/fon_day2" resize_options="500x500" >}}

### Debrief and Potential Improvements

During the event we continuously talked to the public and other exhibitors, listening to their views and whether they had any feedback - in addition to providing post-its for participants to leave their thoughts. It felt great to see that a lot of participants understood what we were going for. In no particular order, some feedback included:

1. Have more objects, and decide on their relation to the sounds. If random keep them random, otherwise try and match the sound to the object. 
2. Complexity - its simple and great for kids, but struggles to hold the attention of adults as its challenging to make anything cohesive, more than just random sounds.
3. Connectivity  - we have two pillars, but nothing really connected them apart from conceptually.
4. Narrative was a bit too vague, we needed to be a bit more cohesive and certain (I like Georgios's suggestion of it all being about choices and how individual choices can affect the collective)
5. Introducing objectives so that participants have something to work towards, instead of simply making things up. 
6. Introducing more interest through different interaction methods. 
7. The Forest is rather small isnt it? :D 

## Conclusion

Tom was saying after, we could measure our success by the number of children that had to be dragged away kicking and screaming by their parents. By that metric, I have to say we did quite well! It was extremely gratifying to see all of the public, interacting, enjoying and playing with the exhibit that we had designed, created and built from scratch. We got some amazing feedback from all involved and loads of potential improvements for the future. 
There have been loads of suggestions as to where to go next, from music festivals to art exhibitions and things like EMF Camp! 

I've written this article partly for myself to keep track of what we've done, and our thought processes throughout the process, but also partly to demonstrate that making something like this is very possible with a good idea! A few months ago this all started out as an idea, and an ambition to do something different, then 4 months later we have something tangible which the public is interacting with, and learning from. This would not have been possible without all of those who've gotten involved and it's been a really fun experience and I hope we as a team keep developing this idea forward into the future! 

I'll leave this article with some more photos from the weekend - Thanks for reading! 

{{< gallery album="posts/the_forest_fon_2023/ending" resize_options="500x500" >}}