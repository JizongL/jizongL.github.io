---
layout: post
comments: True
title: How to gobally set images size in Slidify
category: Web Development
tags: [Slidify, css]
---

This issue can be addressed very easily. 

* First, open the css folder in your slidify folder

* then, open the ribbons.css file, where it stores information for your slidify slides' style setting. 

<!--break-->

* Finally, just add the following code at the end of the file. This is to specify a sepecific size for all the figures in your slide. 
For instance, width = 780 and height=520

{% highlight liquid %}
{% raw %}
img {
  width: 780px;
  height: 520px;
}
{% endraw %}
{% endhighlight %}

Check out the [Figures review] that I made for my pathology exam review as an example. 

Hope this is helpful. 

Thank you for reading.