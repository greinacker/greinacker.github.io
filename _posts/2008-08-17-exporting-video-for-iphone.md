---
layout: post
status: publish
published: true
title: Exporting video for iPhone
date: '2008-08-17 14:06:08 -0600'
date_gmt: '2008-08-17 20:06:08 -0600'
categories:
- iphone
- video
tags: []
---
I was editing a video yesterday using Final Cut Express 4, and wanted to create a version that would play on the iPhone. The timeline I was using was 1080i60, and the aspect ratio was 16:9.

First I tried File / Export / Using QuickTime Conversion, and selected "iPhone" as the format:

<img src="/gregr/weblog/assets/uploads/2008/08/fce1.png" data-border="0" width="300" height="142" alt="fce1.png" />

This created a video that would indeed sync through iTunes to my iPhone, and play successfully, but it messed up the aspect ratio - it exports a video that's 480x320, which is a 4:3 ratio, so everything in my video was tall and skinny. Pretty useless.

Then I tried File / Export / Using QuickTime Conversion, selected "QuickTime Movie" as the format, and set the compression type to H.264. Dial the bit rate down to say 900 kbps, set the audio to AAC 128kbps, and export. But - no matter what I did (and I tried just about every combination of settings I could think of), this video would not sync to the iPhone through iTunes - it had to go through a conversion (in iTunes, Convert Selection for iPhone/iPod) first. Definitely not what I wanted.

Then finally, I tried File / Export / Using QuickTime Conversion, and selected "MPEG-4" as the format:

<img src="/gregr/weblog/assets/uploads/2008/08/fce2.png" data-border="0" width="300" height="142" alt="fce2.png" />

Click "Options", then make the following settings:

File format: MP4  
  
Video format: H.264  
  
Bit rate: 900 kbps  
  
Image size: Custom (set resolution you want here, e.g. 480x270)  
  
Frame rate: current

<img src="/gregr/weblog/assets/uploads/2008/08/fce3.png" data-border="0" width="300" height="285" alt="fce3.png" />

But then, here's the key to making the whole thing work, which unfortunately took a while to figure out. Click "Video Options", and set the profile to "Baseline":

<img src="/gregr/weblog/assets/uploads/2008/08/fce4.png" data-border="0" width="300" height="165" alt="fce4.png" />

Finally, set the audio to AAC-LC, and you should be good to go.

Hope this is helpful for someone...but at very least, the next time I need to do this, I will have it written down. :-)
