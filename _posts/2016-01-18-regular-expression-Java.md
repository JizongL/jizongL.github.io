---
layout: post
comments: True
title: Java basics: regular expression 
category: Javascript
tags: [javascript,steganography]
---

[](http://www.tutorialspoint.com/java/java_regular_expressions.htm)



import java.io.Console;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

class Reggie {
  public void main(String args) {
    Console console = System.console();
    // Your amazing code below
  String zipCode = args;
    if (zipCode.matches("^\\d{5}(-\\d{4})?$")){
      System.out.printf("%s is a valid zip code%n", zipCode);
    }else{
    System.out.printf("%s is not a valid zip code%n", zipCode);
    }
  String skills = "JavaScript, HTML, CSS, Java";
    for (String skill:skills.split("\\W+")){
        System.out.printf("Skill: %s %n", skill);
    }
  }
}