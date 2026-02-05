---
layout: post
published: true
title: Editing Canon 30p "PF30" footage in FCPX
date: '2011-12-02 10:54:33 -0700'
categories:
- video
tags:
- final-cut-pro-x
- editing
- fcpx
- canon
- avchd
---
Based on what you usually see on this site, you might think came out of nowhere, but it took many hours to figure this out, and there is precious little information on the net with actual answers.

Canon's current consumer and prosumer camcorders (HF M40, HF M41, HF M400, HF S30, HF G10, XA10, and others) encode in AVCHD, and have the ability to record in 30p. However, in the Canon specs, this is described as "30p progressive (records at 60i)".

The common first-100-google-hits about this suggest doing one of two things:

1\. Edit in a 60i (29.97i) interlaced timeline.

2\. De-interlace the footage, and edit in a 29.97p timeline.

There are problems with both of these.

It's not obvious, but it seems that the "PF30" footage (as the Canon cameras call it in their configurations) is recorded as "[Progressive Segmented Frame](http://en.wikipedia.org/wiki/Progressive_segmented_frame)". In layman's terms (and believe me, I'm a layman when it comes to this), this means an entire frame is captured in the camera, and then it's recorded into two separate fields in the 60i recording. The two fields, together, make up the frame.

Sounds a lot like interlaced footage, right? No. With true interlaced footage, half of the frame lines are recorded in each field...but each field is 1/60 second apart. So there are no two fields which, when combined, will yield a complete frame at a single point in time.

So this demonstrates the problem with both \#1 and \#2 above. If you edit in an interlaced timeline, you're using footage that isn't really interlaced. And if you de-interlace it, you're close but you may not end up with what the camera recorded...and, it's an unnecessary step, since the footage isn't interlaced.

Ideally, the editor would detect this PF30 footage, and import it as 30p. However, most editors today do not. Here's [an article about this](http://provideocoalition.com/index.php/atepper/story/empsf8217s_missing_workflow_em_part_2_the_canon_xa10_camera/), re the Canon XA10. In Final Cut Pro X, importing this footage just using Import From Camera will show it as 29.97i.

So what to do? I've found two ways to get this footage interpreted correctly as 30p by Final Cut Pro X:

1\. Use [ClipWrap](http://www.divergentmedia.com/clipwrap), a third-party tool (see [article](http://provideocoalition.com/index.php/atepper/story/psf8217s_missing_workflow_part_8_clipwrap_to_the_rescue/)). Or...

2\. Simply import into FCPX twice; do something like the following:

- Use Import From Camera to import your footage into Event1.
- Then, use Import Files, and import the files in Final Cut Events / Event1 / Original Media - and copy them into a new Event2.

When you import the second time, the files are just copied over - you can compare the timestamps if you want - so you're not losing any quality. And after you do this, you'll see the footage after the second import is shown as 29.97p...and will not need to render if dropped into a 29.97p timeline. Whew!

When I was trying to find the difference between the first and second import, I noticed the second had the Field Dominance Override set to "Progressive". Aha, I thought...one could simply change this setting on the original first-import footage, and it will be interpreted as 29.97p. And at first glance, it appears to work. However, if you take this footage and put it in a 29.97p timeline, it will have to render, and this should be unnecessary. Just using a second import step eliminates this problem.

So anyway, hopefully this will save someone else a few hours of research!
