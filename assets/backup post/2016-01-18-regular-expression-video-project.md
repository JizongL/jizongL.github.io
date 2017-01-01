---
layout: post
comments: True
title: Introducing Regular expression 
category: Regular Expression
tags: [java, regular expression]
---

This tutorial is made to show you how you can use [Regular Expression](https://www.google.com/?gws_rd=ssl#q=regular+expression) and a text editor to make your day to day office work easier. 

![ddd](https://viblo.asia/uploads/images/d9a2a14598974e7cc9ea922a835c70496648865f/8b06b3b2f79f332104e71323d7865d2c6de7379d.png)

<!--break-->
* This line is a placeholder to generate the table of contents
{:toc}

## prerequsite 

###download and install [sublime text editor](http://www.sublimetext.com/2)
you can use either PC or Mac for this tutorial. 

###download the text file you will need for this tutorial [here]()


## Introduction 


So, What is [Regular expression](https://www.google.com/?gws_rd=ssl#q=regular+expression) ? Let's pull up a 
[wikipedia defintion](https://en.wikipedia.org/wiki/Regular_expression)


## Getting started 

### Shushy words example


Let's get to the practical side of the story. 

To start simple, let's say you want to extract certain characters out of a text file. 

For example, the following

famous tourist tongue twister. 

**Sh**e sells sea-**sh**ells on the sea-**sh**ore.

The **sh**ells **sh**e sells are sea-**sh**ells, I'm **su**re.

For if **sh**e sells sea-**sh**ells on the sea-**sh**ore

Then I'm **su**re **sh**e sells sea-**sh**ore **sh**ells.

By using some simple regular expression syntax, I can extract all the words with the 

"Sh" sound. 


To illustrate the idea, I wrote a program in java to fulfill such task. 


<div style="width:700px;height:300px;line-height:3em;overflow:auto;padding:5px;">
<pre>
<code>
	class FindAllTheShWords{
 public void FindAllTheShushyWords(String args) {
 
      String script = args;
      Pattern pattern = Pattern.compile("(\\w*(sh|ti|su)\\w*)");
      Matcher matcher = pattern.matcher(script);
      while (matcher.find()){
        System.out.printf("%s is a shushy word because of %s. %n",
                        matcher.group(1),
                        matcher.group(2));
      } 
  }
</code>
</pre>
</div>




(you don't have to study the code above if you are not a programmer)


### Speech coach example

Ok, now let's get more complicated, how about I were a speech couch, and I want to 

select all the words that have the "Sh" sound to help my students to practice 

speaking them?

Here is another Java program I wrote to fullfill this task. 





<div style="width:700px;height:300px;line-height:3em;overflow:auto;padding:5px;">
<pre>
<code>
class FindAllWordsWith {
  public void AllTheWordsEndWithED(String args) {
 
      String script = args;
      Pattern pattern = Pattern.compile("(\\w*(ed)\\b)");
      Matcher matcher = pattern.matcher(script);
      while (matcher.find()){
        System.out.printf(
          
          " you must emphasize "+
                        matcher.group(2)+" sound in the word " +
                        matcher.group(1)+"%n");
      }
      
    }
    public void AllTheWordsEndWithTorD(String args) {
 
      String script = args;
      Pattern pattern = Pattern.compile("(\\w*(d|t)\\b)");
      Matcher matcher = pattern.matcher(script);
      while (matcher.find()){
        System.out.printf(
          
          " you must emphasize "+
                        matcher.group(2)+" sound in the word " +
                        matcher.group(1)+"%n");
      }
      
    } 
}
</code>
</pre>
</div>

Now, by using some basic combination of *regular expression*, you can do a lot of 

things that could have no limit but your imagination. For example, the many DNA sequencing softwares such as the powerful [Blast on NCBI](http://blast.ncbi.nlm.nih.gov/Blast.cgi), or how about the post office wants to build an App that can recognize all [Postal code patterns](http://stackoverflow.com/questions/578406/what-is-the-ultimate-postal-code-and-zip-regex) around the world, in order to make their shipment task easier? Or how about [sentiment analysis](http://www.r-bloggers.com/slightly-more-than-basic-sentiment-analysis/) or spotting trends from twitter feeds or Facebook etc. 

Now, you may say, wait a minute, you showed me the defintion of Regular Expression and 

I more or less grasp some of its powerful functionalities, but I still don't 

exactly know to use it and how it could benefit my works? besides, I am not programmer 

and I don't write code. Don't worry, you don't have to be a programmer in order to use the functions of "regular expression"

## refex for a moment
Before I walk you through all the basic details, I would like you to pause for a 

few seconds and reflex.

* What are some of the other possibilities you have in mind?

* and do you remember what is the definiton of Regular Expression?

(the same quizs on video)





## The [visual Regex Tester](http://www.ocpsoft.org/tutorials/regular-expressions/java-visual-regex-tester/) 

Now let's introduce a few very basic expression syntaxs in the table below. 

| Function | Syntax 
 ---|---
 all the letters | \w
 all the words | \w*
 all the words with the letter d |\w*(d)
 or | | |
 |all the words with d or t | \w*(d\|t)
 |all the words end with d or t | \w*(d\|t)\b 

Now, I encourage you to open [visual Regex Tester](http://www.ocpsoft.org/tutorials/regular-expressions/java-visual-regex-tester/) and following along as I show you in the video.

### Regex Cheatsheet
Besides these few simple expressions, you can visit [The Regex Cheetsheet](http://www.rexegg.com/regex-quickstart.html) or [some other documentation sites](https://www.google.com/?gws_rd=ssl#q=regular+expression+documentation) to learn more useful expressions. 

## Practical use with text editors for everyone.

Now, Let's demonstrate how you can use Regular Expression with text editors. 

There are many good [text editors](https://en.wikipedia.org/wiki/List_of_text_editors) out there, but I personally love the sublime text and you can [download it here](http://www.sublimetext.com/2). 

(see demonstrating from video)

I hope you would benefit from this, please leave your feedback and comments.











share the resources
http://www.rexegg.com/regex-quickstart.html

