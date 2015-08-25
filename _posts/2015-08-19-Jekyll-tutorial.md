---
layout: post
comments: True
title: Step by Step of building a Jekyll blog
---

So when I learned about Jekyll, it seemed like a great alternative. I like the idea that my entire blog is a set of static files. Besides its simplicity, it makes backups so much easier and avoids most common security concerns caused by running dynamic websites. I could write my posts in Markdown which I know from Confluence and GitHub. Also, Jekyll allows for code examples to be very nicely embedded in the website. Finally, Jekyll is very lightweight and allows for very minimal websites without any bloat.
<!--break-->
The fact that GitHub provides free hosting for Jekyll blogs is just icing on the cake. It will save me ~$50 per year in hosting. GitHub provides automatic version control of my blog. I can use GitHub's web editor to write blog posts online. And I can still connect it to my custom domain (joshualande.com).




## Set up Disqus Comments
If you want to add a comment function to you blog, you can following the following steps

* 1: Go to[DISQUS](https://disqus.com) and register an account, then following the instuction there to add Disqus to your site and it will give you unique code to use for your site, save the code for later use.

* 2: Modify the file[_layouts/default.html](https://github.com/JizongL/jizongL.github.io/blob/master/_layouts/default.html) in your 
layouts folder by including the following line after **comment** in the default code.

{% highlight liquid %}
{% raw %}
{{ content }}
{% include comments.html %}
{% endraw %}
{% endhighlight %}

* 3: Next create a file [_includes/comments.html](https://github.com/JizongL/jizongL.github.io/blob/master/_includes/comments.html)     and paste the code given to me by Disqus as follow:
{% highlight liquid %}
{% raw %}
{% if page.comments %}
<!-- Add Disqus comments. -->
<div id="disqus_thread"></div>
<script type="text/javascript">
  /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
  var disqus_shortname = '<USERNAME>'; // required: replace example with your forum shortname
  var disqus_identifier = "{{ site.disqusid }}{{ page.url | replace:'index.html','' }}";

  /* * * DON'T EDIT BELOW THIS LINE * * */
  (function() {
    var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
    dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
  })();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
{% endif %}
{% endraw %}
{% endhighlight %}


## Enabling Google Analytics

This is very straightforward and follows the same pattern as setting up the Disqus comments. Go to the [Google Analytics](http://www.google.com/analytics/) sign up for an account if you don't have one already, use universal tracking and copy the code that they provide. Create a file in the `_includes` folder and name it something like `google_analytics.html`. <!--break-->
Paste in the code Google gave you and save the file. Now all that's left is to open `layouts/default.html` and add the following line:
{% highlight liquid %}
{% raw %}
{% include google_analytics.html %}
{% endraw %}
{% endhighlight %}

[Google Analytics](https://truongtx.me/2013/04/05/google-analytics-for-jekyll-bootstrap/)
