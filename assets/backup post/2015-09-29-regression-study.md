---
layout: post
comments: True
title: Regression indepth study
category: Statistics
tags: [OLS, regression]
---

* This line is a placeholder to generate the table of contents
{:toc}

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

## Derivation of linear regression equations

The following is adapted from [Data Analysis Toolkit #10: Simple linear regression](http://seismo.berkeley.edu/~kirchner/eps_120/Toolkits/Toolkit_10.pdf). However, there are some important supplementary information I want to include here. 
<p align="right">(1)</p> 
$$Q = \sum_{i = 1}^n (Y_i - \hat Y)^2 = \sum_{i = 1}^n (Y_i - a - bX_i)^2$$						

Then, Q will be minimized at the values of a and b for which ∂Q / ∂a = 0 and ∂Q / ∂b = 0 
<p align="right">(2)</p> 
$$\frac{\partial Q}{\partial a} = \sum_{i=1}^n -2(Y_i - a -bX_i) = 2(na + b\sum_{i}^n X_i - \sum_{i=1}^n Y_i) = 0$$		

divide through by 2 and solve for a
<p align="right">(3)</p> 
$$a = \bar Y - b \bar X$$																								

which says that the constant a (the y-intercept) is set such that the line must go through the mean of x and y. This makes sense, because this point is the "center" of the data cloud. The second condition for minimizing Q is,
<p align="right">(4)</p> 
$$\frac{\partial Q}{\partial b} = \sum_{i=1}^n -2X_i(Y_i - a -bX_i) = \sum_{i=1}^n -2 (X_iY_i - aX_i - bX_i^2) = 0$$		

If we substitute the expression for a from (3) into (4), then we get
<p align="right">(5)</p> 
$$\sum_{i=1}^n(X_iY_i - X_i\bar Y) + bX_i\bar X -bX_i^2)=0$$

separate this into two sums
<p align="right">(6)</p> 
$$\sum_{i=1}^n(X_iY_i-X_i\bar Y)-b \sum_{i=1}^n (X_i^2-X_i\bar X)$$
<p align="right">(7)</p> 
$$b=\frac{\sum_{i=1}^n (X_iY_i-X_i\bar Y)}{\sum_{i=1}^n (X_i^2-X_i\bar X)} = \frac{\sum_{i=1}^n (X_iY_i)-n\bar X\bar Y}{\sum_{i=1}^n (X_i^2)- n\bar X^2} $$

Because
$$\sum_{i=1}^n (\bar X^2-X_i\bar X) = 0  and  \sum_{i=1}^n (\bar X\bar Y -Y_i\bar X) = 0$$

## include R code to illustrate why it is 0. 




<p align="right">(1)</p>
$$Y_i = \alpha + |beta X_i + \epsilon_i$$ 

<p align="right">(2)</p>
$$E(Y_i) = \alpha + \beta E(X_i)$$

subtract (2) from one (1)

<p align="right">(3)</p>
$$Y_i - E(Y_i) = \beta(X_i-E(X_i)+ \epsilon_i)$$

<p align="right">(4)</p>
$$E(Y_i) = \bar Y and E(X_i) = \bar X$$

<p align="right">(5)</p>
$$Y_i - \bar Y = \beta(X_i-\bar X)+ \epsilon_i)$$

then $$\beta$$ becomes
<p align="right">(6)</p>
$$\beta = \frac{\sum_{i}^n (X_i-\bar X)(Y_i-\bar Y)}{\sum_{i}^n (X_i- \bar X)^2}$$

and we could divide both the numerator and denomator by n

<p align="right">(7)</p>
$$\beta = \frac{\frac{\sum_{i}^n (X_i-\bar X)(Y_i-\bar Y)}{n}}{\frac{\sum_{i}^n (X_i- \bar X)^2}{n}}$$

deriving alpha
<p align="right">(8)</p>
$$E(Y_i) = \alpha + \hat\beta E(X_i)$$

according to (4)
<p align="right">(9)</p>
$$\hat\alpha = \bar Y - \hat\beta E(X_i)$$

Generalize to multiple linear regression 


## Regression through the origin

$$
        \begin{bmatrix}
        x_{1} \\
        \vdots \\
        x_{n} \\
        \end{bmatrix}
$$
$$
        \begin{bmatrix}
        y_{1} \\
        \vdots \\
        y_{n} \\
        \end{bmatrix}
$$
$$x \in \mathbb R^2 $$
$$y \in \mathbb R^2 $$

Consider regression through the origin, let's minimize 

$$||y-x\beta||^2 where \beta \in \mathbb R$$    

which can be expressed as 

$$(y-x\beta)^T(y-x\beta)$$

$$y^Ty - 2y^Tx\beta+x^Tx\beta^2$$

$$\frac{\partial}{\partial\beta} = -2y^T+2x^Tx\beta$$ 

$$\hat\beta = \frac{y^Tx}{x^Tx} = \frac{<y,x>}{<x,x>}$$

we can do a second derivative to test $$\beta$$

$$\frac{\partial^2}{2\beta^2} = 2x^Tx>0$$

The above formula could be further enhanced to be 

$$\hat\beta = \frac{\sum\frac{y_{i}x_{i}}{n}}{\sum\frac{x_{i}x_{i}}{n}}$$

Since we could center x and y, therefore $$\bar x=\bar y=0$$

$$\hat\beta = \frac{\sum\frac{(y_{i}-\bar y)(x_{i}-\bar x)}{n}}{\sum\frac{(x_{i}-\bar x)^2}{n}}$$
$$=\frac{\hat cov(y,x)}{\hat var (x)}$$
$$=\hat cor (y,x)\frac{\hat sd (y)}{\hat sd(x)}$$

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





