---
layout: post
published: true
title: Using Working Copy with 1Writer on iPad Pro
date: '2016-01-15 11:11:36 -0700'
categories:
- development
tags:
- ipad
- 1writer
- working-copy
- ipad-pro
- iOS
---
Over the last month or so, I've been doing development and other work with a new [iPad Pro](http://www.apple.com/ipad-pro/), and the [smart keyboard](http://www.apple.com/smart-keyboard/). I sometimes get incredulous looks from people when I tell them about this, so I thought I'd write about some of the things I've been doing. First up, editing markdown files in a Github repository.

[Working Copy](http://workingcopyapp.com/) (<a href="https://appsto.re/us/xONC1" target="_blank">app store</a>) is one of those apps that seems to fly below the radar - but it's by far the best git client I've found for iOS. It's free to try, with a in-app purchase to unlock certain features like the ability to push changes to a remote repository. But my favorite part is the way it implements a document provider, allowing you to edit files in your repo with other applications. So here, I'll show you how to edit markdown files in your repo using another great app, [1Writer](http://1writerapp.com/) (<a href="https://appsto.re/us/GjYJO" target="_blank">app store</a>).

First, you need to clone your repository into Working Copy. Once you have it down, it will look something like this:

<a href="/gregr/weblog/assets/uploads/2016/01/img_0021.png" rel="attachment wp-att-1085"><img src="/gregr/weblog/assets/uploads/2016/01/img_0021-1024x768.png" class="aligncenter size-large wp-image-1085" width="625" height="469" alt="img_0021" /></a>

Here, this repository is a set of API documentation that I want to edit. Now, we could edit this right here within Working Copy, but instead we will use 1Writer. Open 1Writer, and click the "+" button in the lower right corner:

<img src="/gregr/weblog/assets/uploads/2016/01/img_0022.png" class="aligncenter" />

The first time you do this, you'll notice Working Copy isn't in the list. Click "More", and you'll be able to enable it:

<img src="/gregr/weblog/assets/uploads/2016/01/img_0023.png" class="aligncenter" />

After you get it enabled, you'll see it in the list:

<img src="/gregr/weblog/assets/uploads/2016/01/img_0024.png" class="aligncenter" />

Now tap Working Copy, and you'll see a list of documents you can open from the repository:

<a href="/gregr/weblog/assets/uploads/2016/01/img_0025.png" rel="attachment wp-att-1089"><img src="/gregr/weblog/assets/uploads/2016/01/img_0025-1024x768.png" class="aligncenter size-large wp-image-1089" width="625" height="469" alt="img_0025" /></a>

Pick the document you want (we'll edit the README.md as an example), and make your edits.

When you're done editing, go back to Working Copy:

<a href="/gregr/weblog/assets/uploads/2016/01/img_0026.png" rel="attachment wp-att-1090"><img src="/gregr/weblog/assets/uploads/2016/01/img_0026-1024x768.png" class="aligncenter size-large wp-image-1090" width="625" height="469" alt="img_0026" /></a>

You'll see on the left that README.md is modified, and if you tap on it, you can see the changes that were made. When you're ready, you can click "Commit" to commit the changes you've made, and then push to remote repository if you need to.
