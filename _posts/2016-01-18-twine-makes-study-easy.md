---
layout: post
comments: True
title: How to Twine Your Note Into a Webpage
category: Twine
tags: [html5,css, javascript]
---



<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-5FWTRL"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-5FWTRL');</script>
<!-- End Google Tag Manager -->

Today, I am going to introduce to you this amazing tool called [Twine](http://twinery.org)

<!--break-->

![twine](https://www.glorioustrainwrecks.com/files/screens/ct2-38_twine.jpg)

### video tutorial
<iframe width="760" height="523" src="https://www.youtube.com/embed/T4Hzt9LtR7g" frameborder="0" allowfullscreen></iframe>


[Twine](http://twinery.org) is an open-source tool for telling interactive, nonlinear stories. It was developed by [Chris Klimas](http://chrisklimas.com) back in 2009. 

And the good news is that you don't need any expert experience with software or web development in order to Twine!

So, what exactly can Twine help you? I think its usefulness has no boundary. 

Let's get you started with a twine project that I created for my upcoming boring exam. 

(Showing the example)

Here are some of the uses that I came up with, such as making 

Mind Mapping
Taking note during class 
create simple interactive webpage. 
write interactive books. 
etc 

What about you? Please pause a while to think about what you can do with Twine. 


Ok, let's start building a very simple project to illustrate the workflow of Twine. 

Before I walk you through the nitty gritty, let's make sure that you have Twine downloaded. [Download Twine](http://twinery.org) 



You must be surprise that for ordinary users who do not program, you really only need to learn one syntax. 


## remember these two syntaxs


# "[[]]"  and "##"



-
-
-




## Adding HTML image tax

## <img> 




## ABC example

Let's create a loop with A, B, C. First, we create 3 new passages and name them A, B 
and C. Then we can type in the following accordingly. 

(see video)


## Subject example

Say you are taking note for a class, it is always different to take note using 
traditional method. So often the professor start talking about one subject A, then changes into another subject, B, C, etc. he then would jump back and forth between subjects and this makes it very different for students to make good note. 

How, with Twine at your disposal, you can turn this challenging task into a piece of cake. Let's build a simple subject note project. 

(see video)


## Adding images
How about adding some images
There are many ways to add image, but I usually prefer to use [Dropbox](https://www.dropbox.com/business?home=300&f=1&_tk=sem_b_goog&_camp=sem-b-goog-us-eng-top-exact&_kw=dropbox|e&_ad=47393997462|1t1|c&gclid=CLzFxcL6ucoCFYOEaQodpNgApQ) because it is the easiest way. I first upload my images in a folder in the dropbox public folder, then I create public links to embed in my note. You can use the html image tag(see the following code) to achieve this. 




{% highlight liquid %}
{% raw %}

  <img src = "your link">

{% endraw %}
{% endhighlight %}


Let's add an example image to our newly created note
(see video)

## publish your work
Now, the last step is to publish your result. 
The finished product is a html file, you can copy and paste it on your dropbox public folder, and then generate a public link and share it with your friends. 

Finally, these are the most basic functions you should learn about Twine, if you are interested in web programming and want to explore more, I recommand you to subcribe to the channel [VegetarianZombie](https://www.youtube.com/watch?v=HZzChB75DFs) on YouTube which is an amazing video series to walk you through all the details of Twine or you could read the Twine [documentation](http://twinery.org/wiki/) to explore more.  

Thank you!

