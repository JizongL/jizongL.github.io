---
layout: post
comments: True
title: How to create a photo gallery with HTML and CSS
category: Pathology
tags: [pathology, diseases,review]
---

This will work on platforms like Wordpress or Jekyll that let you minipulate "code" and input HTML directly. Although there are many web publishing tools included with photo gallery widgets or other plugins which can take care of this task for you, but knowing how to code it yourself is still something enjoyable to do!

<!--break-->

Here is an example of what you will build

<style>
div.img {
    margin: 5px;
    padding: 5px;
    border: 1px solid #cccccc;
    height: auto;
    width: auto;
    float: right;
    text-align: center;
}

div.img img {
    display: inline;
    margin: 5px;
    border: 1px solid #cccccc;
}

div.img a:hover img {
    border:1px solid #cccccc;
}

div.desc {
    text-align: center;
    font-weight: normal;
    font-size: 12px;
    width: 200px;
    margin: 5px;
}
</style>

<body>

<div class="img">
  <a target="_blank" href="/assets/blog/gallery\ building/1.jpg">
    <img src="/assets/blog/gallery\ building/1.jpg" alt="Klematis" width="200" height="180">
  </a>
  <div class="desc">lovely cat </div>
</div>

<p style="clear: both;">

Before we start, we need to get some photos. To make thing easy for you, I have already prepare some lovely 

[cat](https://dl.dropboxusercontent.com/u/49272502/temp%20images/blogimages/build%20a%20photo%20gallery/cat.zip)

 for you. Please go ahead and download them and unzip the files and place them into your Jekyll blog's main directory. In my case, I created a folder "asset" which store all my media files there. 

Once you get the previous steps setup, it is time to create a new post. If you are a beginner and do not know Jekyll well you could certainly learn all the basic quickly by visitting [Joshua Lande's](http://joshualande.com/jekyll-github-pages-poole/)blog, where you should find all the necessary information to help you get started. 

Once you created a new post, add the following chunk of code to the start, this is to set up the CSS style of the gallery layout. 

{% highlight liquid %}
{% raw %}
<style>
div.img {
    margin: 5px;
    padding: 5px;
    border: 1px solid #cccccc;
    height: auto;
    width: auto;
    float: left;
    text-align: center;
}

div.img img {
    display: inline;
    margin: 5px;
    border: 1px solid #cccccc;
}

div.img a:hover img {
    border:1px solid #cccccc;
}

div.desc {
    text-align: center;
    font-weight: normal;
    font-size: 12px;
    width: 200px;
    margin: 5px;
}
</style>
{% endraw %}
{% endhighlight %}