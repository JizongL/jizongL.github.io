---
layout: post
comments: True
title: web crawling with python
category: Python
tags: [web crawler, web crawling, web content query]
---


### goals
Say we are shopping on this[eBay](http://www.ebay.ie/sch/Clothes-Shoes-Accessories-/11450/i.html?_catref=1), we see numerous items and vast number of pages.<!--break--> We really do not have time to sort through the item one by one right away, but however we want to make a file with a list of all the links to all the items from all the pages, with specified title. How do we achieve this? Python and a 2 libraries will make this easy. 



### preparatory

In order to perform this task, you need to install [python 3.4](https://www.python.org/downloads/) or newer, and I recommand an [IDE](https://en.wikipedia.org/wiki/Integrated_development_environment) like [PyCharm](https://www.jetbrains.com/pycharm/). If you are not familiar with those basic, you should learn them first. You will also need to install 2 python libraries. 

* [BeautifulSoup](http://www.crummy.com/software/BeautifulSoup/bs4/doc/)

* [requests](http://www.python-requests.org/en/latest/) 

### What is "BeautifulSoup"?

Beautiful Soup is a Python library for pulling data out of HTML and XML files. It works with your favorite parser to provide 
idiomatic ways of navigating, searching, and modifying the parse tree. It commonly saves programmers hours or days of work. [Click for detail](http://www.crummy.com/software/BeautifulSoup/bs4/doc/)

### What is "requests" ?
Requests is an Apache2 Licensed HTTP library, written in Python, for human beings. [click for detail](http://www.python-requests.org/en/latest/)

### procedure 

start a new .py file then copy and paste the following code

this chunk is for importing the libraries
{% highlight liquid %}
{% raw %}
import requests
from bs4 import BeautifulSoup
{% endraw %}
{% endhighlight %}

this chunk is for building a "while loop" to crawl through the source code of the site. 

{% highlight liquid %}
{% raw %}
def trade_spider(max_pages):      ## build a helper function to enact the task
    page = 1
    while page <= max_pages:      ## set dummy variables to represent page numbers to be queried.
        url = "http://www.ebay.ie/sch/Clothes-Shoes-Accessories-/11450/i.html?_catref=" + str(page)
        source_code = requests.get(url)     ## machine for getting info from url
        plain_text = source_code.text       ## machine for storing info from url
        soup = BeautifulSoup(plain_text)    ## machine for converting text into soup format.
        for link in soup.findAll('a',{'class':'vip'}):    ##  look for an item that is unique for that link.
            href = "https://www.thenewboston.com" + link.get('href')   ## paste the main url to the specific sublinks
            title = link.string   ## include titles by using link.string
            print(href)           ## print href
            print(title)          ## print title
        page += 1

trade_spider(1)    ## print only 1 page

{% endraw %}
{% endhighlight %}