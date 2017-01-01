---
layout: post
comments: True
title: Java Note
category: Java
tags: [java]
---


## Receiving Input

|[escape sequence](https://docs.oracle.com/javase/tutorial/java/data/characters.html)| explaination|
---|---
| %s |The use of %s will result in the toString() method being called on the object, and thus will work for any type T
|/n |break line

The following Java code prints out "Hello, my name is ..."

<pre>
	<code>
import java.io.Console;
 
public class Introductions {
  
    public static void main(String[] args) {
        Console console = System.console();
        // console.readLine("prompt") takes input after prompting, and send it to the 	// variable firstName.
        String firstName = console.readLine("What is your name? "); 
        console.printf("Hello, my name is %s\n",firstName);
        console.printf("%s is learning how to write Java\n",firstName);
  
    }
}
	</code>
</pre>


Input and Output - Source and Destination, check out [IO package](http://tutorials.jenkov.com/java-io/overview.html)

float chart of IO
<svg width="100%" height="100">

    <svg y="10" x="30">
        <path d="M110,35 l38,0 l0,-5 l10,5 l-10,5 l0,-5" style="stroke: #336633; stroke-width: 1;  fill:#669966; " />
        <path d="M260,35 l38,0 l0,-5 l10,5 l-10,5 l0,-5" style="stroke: #336633; stroke-width: 1;  fill:#669966; " />


        <svg x="0" y="0">
            <rect x="10" y="10" width="100" height="50" rx="2" ry="2" style="stroke: #669966; stroke-width: 1; fill: #ccffcc;" />
            <text x="30" y="40"  style="stroke: none; fill: #000000; font-family: Arial; font-size: 16px;" >Source</text>
        </svg>

        <svg x="150" y="0">
            <rect x="10" y="10" width="100" height="50" rx="2" ry="2" style="stroke: #669966; stroke-width: 1; fill: #ccffcc;" />
            <text x="30" y="40"  style="stroke: none; fill: #000000; font-family: Arial; font-size: 16px;" >Program</text>
        </svg>


        <svg x="300" y="0">
            <rect x="10" y="10" width="100" height="50" rx="2" ry="2" style="stroke: #669966; stroke-width: 1; fill: #ccffcc;" />
            <text x="20" y="40"  style="stroke: none; fill: #000000; font-family: Arial; font-size: 16px;" >Destination</text>
        </svg>
    </svg>

</svg>