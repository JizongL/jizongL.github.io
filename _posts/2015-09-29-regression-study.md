---
layout: post
comments: True
title: Regression indepth study
category: Statistics
tags: [OLS, regression]
---

Some key points about Least Square Model

<!--break-->

$$
\hat \beta_1 = Cor(Y, X)\frac{Sd(Y)}{Sd(X)}
$$

$$
\hat \beta_0 = \bar Y - \hat \beta_1 \bar X
$$


$$ \hat \beta_1 $$ has the unit of $$\frac{Y}{X}$$, $$\hat \beta_0$$ has the unit of Y.

The line passes through the point ($$\bar X$$,$$\bar Y$$)

The slope of the regression line with X as the outcome and Y as the predictor is Cor(Y,X)Sd(X)/Sd(Y)

The slope is the same one you would get if you centered the data$$(X_i - \bar X, Y_i - \bar Y)$$, and did regression through the origin.

If you normalized the data, $${\frac{X_i - \bar X}{Sd(X)} , \frac{Y_i-\bar Y}{Sd(Y)}}$$, the slope is Cor(Y,X) because Sd(X) = Sd(Y) = 1. 


R code examples



<pre>
 <code class="r">
library(UsingR)
data(galton)
library(dplyr); library(ggplot2)
y <- galton$child
x <- galton$parent
beta1 <- cor(y,x) * sd(y) / sd(x)
beta0 <- mean(y) - beta1 * mean(x)
rbind(c(beta0,beta1), coef(lm(y~x)))
  </code>
</pre>

<pre>
<code>
    (Intercept)         x
[1,]    23.94153 0.6462906
[2,]    23.94153 0.6462906	
</code>
</pre>


## derivation of regression formula through calculus
[adapted from Berkeley](http://seismo.berkeley.edu/~kirchner/eps_120/Toolkits/Toolkit_10.pdf)


$$\sum_{i=1}^n (\bar X^2 - X_i\bar X ) = 0 $$ and $$ \sum_{i=1}^n (\bar X \bar Y - Y_i \bar X) = 0 $$

The following is simulation with R to prove the above terms are true.

<pre>
<code class = "r">
x = c(3,2,4,5,3,2,4,3)
y = c(3,4,2,4,5,3,2,6)
sum((mean(d))^2-d*mean(d))
sum(mean(d)*mean(e)-e*mean(d))
</code>
</pre>

<pre>
<code class = "r">
[1] 0
[1] 0
</code>
</pre>	





