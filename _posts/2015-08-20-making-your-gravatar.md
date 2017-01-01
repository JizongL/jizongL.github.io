---
layout: post
comments: True
title: How to create your web Gravatar 
---


Gravatar is such a handy tool that has many applications and can save you a lot of time and make things pretty. <!--break-->You can check out [Gravatar](https://en.gravatar.com/) to learn all the details. The objective of this post is to show you how you can use your gravatar ID for your blog or website built by [Jekyll](http://jekyllrb.com/) the static site generator, in order to show your ownership of your site. 

* First, register a [Gravatar](https://en.gravatar.com/) account and following all the instruction to set up your account. 

* In order for Gravatar to work on your blog, you need to create a Hash for your Gravatar ID, and you can learn more about this from [Create the Hash](http://en.gravatar.com/site/implement/hash/). But if you do not know PHP and want to speed thing up, you can use this trick I will show you here. First, you need to use [a MD5 Encoder](https://en.wikipedia.org/wiki/MD5) to encode your gravatar email account address. To do so go to [7th Space](http://7thspace.com/webmaster_tools/online_md5_encoder.html) and key in your registered email for Gravatar to get your MD5 Hash. It should look something like this
{% highlight liquid %}
{% raw %}
{"f9879d71855b5ff21e4963273a886bfc"}
{% endraw %}
{% endhighlight %}



