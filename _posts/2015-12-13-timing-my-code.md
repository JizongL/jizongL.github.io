---
layout: post
comments: True
title: How to time my R code
category: R
tags: [R ,system time]
---

[source](http://www.ats.ucla.edu/stat/r/faq/timing_code.htm)


x <- c(0.18, -1.54, 0.42, 0.95)
w <- c(2, 1, 3, 1)
l = c(.147,.0025,.3,1.077)

<!--break-->

ptm <- proc.time()
for (i in c(
        .147,
        .0025,
        .3,
        1.077)
){print(min(sum(w*(x-i)^2)))}
proc.time() - ptm

user  system elapsed 
0.002   0.001   0.004 



ptm <- proc.time()
sapply(l,function(l) sum(w*(x-l)^2))
proc.time() - ptm

user  system elapsed 
0.000   0.001   0.002 





