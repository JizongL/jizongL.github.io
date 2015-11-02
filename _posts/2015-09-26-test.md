---
layout: post
comments: True
title: Include Mathematical notation in your Jekyll blog
category: Jekyll
tags: [MathJax, Jekyll, mathematical notation]
---

In order to use Mathjax with Jekyll markdown, you need to make change to the followings in your **_layouts** folder

* page.html

* post.html

* config.yml

first add the following into both your *page.html* and *post.html* files, this is to load the MathJax javascript for your blog posts and pages. 
see [MathJax](https://docs.mathjax.org/en/latest/configuration.html) Document for further details. 

{% highlight liquid %}
{% raw %}
<script type="text/javascript"
    src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
</script>
{% endraw %}
{% endhighlight %}


then add the following into your config.yml file. This is to make redcarpet behave like GitHub Flavored Markdown. **note**, simply adding redcarpet is not enough, you must include the extensions as follow. See [this link](http://sholsinger.com/2014/03/jekyll-github-flavored-markdown) for further details. 

{% highlight liquid %}
{% raw %}
# Make redcarpet behave like GitHub Flavored Markdown 
redcarpet: 
extensions: ["no_intra_emphasis", "fenced_code_blocks", "autolink", "strikethrough", "superscript", "with_toc_data"]
{% endraw %}
{% endhighlight %}

When this is done, you can begin writing your blog with mathematical notations. I personally find this [link from Mathematics meta](http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference) very helpful, it list many useful notation scripts for reference. 

good luck.





