---
layout: post
comments: True
title: Linear Algebra study note
category: linear algebra
tags: [vector ,linear algebra]
---

* This line is a placeholder to generate the table of contents
{:toc}


<!--break-->

## Definition of $$\mathbf R^n$$ and $$\mathbf R$$

$$\vec X \in \mathbf R^n$$

$$\mathbf R^n = \begin{cases}
n-tuple\\
(x_1,x_2 \cdots x_n)\end{cases}$$
$$ \bigr| x_1,x_2,\cdots x_n \in \mathbf R
$$

## vector transformation 

$$\vec x = \begin{bmatrix}
	x_1\\
	x_2\\
	\vdots\\
	x_n
	\end{bmatrix}
	\vec y = \begin{bmatrix}
	y_1\\
	y_2\\
	\vdots\\
	y_m
	\end{bmatrix}
	$$

let $$\vec x \in \mathbf R^n \text{and} \vec y \in \mathbf R^m$$ 

$$f:\mathbf R^n \implies \mathbf R^m$$

for example

$$f:\mathbf R^3 \implies \mathbf R^2$$

$$\begin{bmatrix}
	x_1\\
	x_2\\
	x_3\\
	\end{bmatrix}
	=
	\begin{bmatrix}
	x_1+2x_2\\
	3x_3\\
	\end{bmatrix}
	$$

$$\begin{bmatrix}
	1\\
	1\\
	1\\
	\end{bmatrix}
	=
	\begin{bmatrix}
	3\\
	3\\
	\end{bmatrix}
	$$

$$\begin{bmatrix}
	2\\
	4\\
	1\\
	\end{bmatrix}
	=
	\begin{bmatrix}
	10\\
	3\\
	\end{bmatrix}
	$$



$$T:\mathbf R^3 \implies\mathbf R^2$$ 

$$T(x_1,x_2,x_3) \implies (x_1+2x_2, 3x_3)$$

## Formal understanding of functions

if a function g(x) maps the single number 2. 

$$g(x_1,x_2) = 2$$

Then, the domain is $$\mathbf R^2$$ and the codomain is $$\mathbf R^3$$ but the range is 2. 

$$h:\mathbf R^2 \implies \mathbf R^3$$

In this, the domain is $$\mathbf R^2$$ and the codomain and the range are $$\mathbf R^3$$, for example

$$\mathbf h (x_1,x_2) = (x_1+x_2, x_2-x_1,x_2x_1)$$


## The concept of Linear independance

The main idea is that there is no redundent vectors in the space

$$c_1\vec v_1+c_2\vec v_2 + \cdots c_n\vec v_n = \mathbf 0| c_1=c_2 \cdots c_n = 0$$ 

[see](https://www.khanacademy.org/math/linear-algebra/vectors_and_spaces/linear_independence/v/span-and-linear-independence-example)

### Test of linear dependance

$$s = \{\vec v_1 \vec v_2, \cdots\vec v_n\} \iff c_1\vec v_1 + c_2\vec v_2 \cdots c_n\vec v_n = \mathbf 0$$

For some $$c_i$$, not all are 0. (at least 1 is non-zero)

<p><a href="/linear%20algebra/2015/11/18/proof-linear-algebra/#linear_dependence">see proof</a></p>

### Example 1

$$
\left( \mathbf A =
\begin{bmatrix}
2\\
1\\
\end{bmatrix}
,
\mathbf B =
\begin{bmatrix}
2\\
1\\
\end{bmatrix}
\right)
$$

to test if A and B are independent

$$
c_1
\begin{bmatrix}
2\\
1\\
\end{bmatrix}
+ c_2
\begin{bmatrix}
2\\
1\\
\end{bmatrix}
= 0 
$$

To satisify the conditon above, if either $$c_1$$ or $$c_2$$ are non-zero, then A and B are dependent 
If both $$c_1,c_2$$ are 0, then A and B are independent 

adapted from [Khanacademy](https://www.khanacademy.org/math/linear-algebra/vectors_and_spaces/linear_independence/v/more-on-linear-independence)

### example 3 

$$\left(\begin{bmatrix}
1\\
-1\\
2\\
\end{bmatrix},

\begin{bmatrix}
1\\
1\\
3
\end{bmatrix}
,
\begin{bmatrix}
-1\\
0\\
2\\
\end{bmatrix}\right)
 = \mathbf Span(s) \ = \mathbf R^3?
$$


## Parametric representation of lines

<!--break-->
let $$
\vec V = \begin{bmatrix}
		2\\
        1\\
\end{bmatrix}
$$

then the span is 
$$
\ \mathbf S = \{ c\vec V | c \in \mathbf R \}
$$

let $$ \vec X = \begin{bmatrix}
			2\\
			4\\	
			\end{bmatrix}
$$

To find a line passes through $$\vec X$$  and parellel to $$\vec V$$

we can use this formula 

$$ L =\{\vec X + t\vec V| t\in \mathbf R\}$$

To find a line passes through both $$\vec a and \vec b$$, use either

$$L = \{\vec b + t(\vec b-\vec a| t \in \mathbf R)\}$$

or 

$$L = \{\vec a + t(\vec b-\vec a| t \in \mathbf R)\}$$

example 

let $$\vec a = \begin{bmatrix}
			2\\
			1\\
			\end{bmatrix}
			$$
	  $$\vec b = \begin{bmatrix}
	  		0\\
			3\\
			\end{bmatrix}
			$$

then $$L = \{\begin{bmatrix}
			2\\
			1\\
			\end{bmatrix} + t(\begin{bmatrix}
			0\\
			3\\
			\end{bmatrix}
			-\begin{bmatrix}
			2\\
			1\\
			\end{bmatrix}) | t\in \mathbf R\}$$

To see full from this video

<a style="color: #111; font-family: helvetica;" target="_blank" href="https://www.khanacademy.org/video/linear-algebra-parametric-representations-of-lines?utm_campaign=embed">
<iframe frameborder="0" scrolling="no" width="560" height="355" src="https://www.khanacademy.org/embed_video?v=hWhs2cIj7Cw" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>			

## Dimension of the Column Space or Rank


The following is adapted from [Khanacademy](https://www.khanacademy.org/math/linear-algebra/vectors_and_spaces/null_column_space/v/dimension-of-the-column-space-or-rank)

<a style="color: #111; font-family: helvetica;" target="_blank" href="https://www.khanacademy.org/video/dimension-of-the-column-space-or-rank?utm_campaign=embed">

<iframe frameborder="0" scrolling="no" width="560" height="355" src="https://www.khanacademy.org/embed_video?v=JUgrBkPteTg" allowfullscreen webkitallowfullscreen mozallowfullscreen></iframe>


Rank is the dimension of the basis of a matrix. 

In order to be a basis, it has to satisfy that

* vectors span $$\mathbf A$$

* all the column vectors of a basis are linear independent 


for example
<p align = "right">(1)</p>

$$
        \mathbf A = \begin{bmatrix}
        1 & 0 & -1 & 0 & 4 \\
        2 & 1 & 0 & 0 & 9 \\
        -1 & 2 & 5 & 1 & -5 \\
        1 & -1 & -3 & -2 & 9
        \end{bmatrix}
$$

the column space of $$\mathbf A$$ is 

<p align = "right">(2)</p>
$$ C(\mathbf A) = span\{\vec a_1,\vec a_2,\vec a_3,\vec a_4, \vec a_5\} $$ 

However, we don't know if all the  column vectors in the span are linear independant 



To find the basis, let's convert to reduced echelon form $$A_e$$
<p align = "right">(3)</p>

$$
       \mathbf A_e = \begin{bmatrix}
        1 & 0 & -1 & 0 & 4 \\
        0 & 1 & 2 & 0 & 1 \\
        0 & 0 & 0 & 1 & -3 \\
        0 & 0 & 0 & 0 & 0
        \end{bmatrix}
$$

let $$\vec r_i$$ denote the columns of A
<p align = "right">(4)</p>

we see that $$\{\vec r_1,\vec r_3,\vec r_4\} $$ are linear independent and for the basis of $$\mathbf A_e$$, and the 1s in these column vectors are also called the [pivot entries](https://en.wikibooks.org/wiki/Linear_Algebra/Row_Reduction_and_Echelon_Forms#Pivot_Positions). Moreover, $$\{\vec r_3,\vec r_5\}$$ can be represented as linear combinations of $$\{\vec r_1,\vec r_2,\vec r_4\}$$




Therefore, we can conclude that  $$\{\vec a_1,\vec a_2,\vec a_4,\} in \mathbf A$$ are also linear independent and they are the basis of $$\mathbf A$$

And the Rank of A is just the dimension of the basis, so $$rank(\mathbf A) = 3$$

## Linear subspaces

In order to be a subspace, a set must satisfy the following 3 criterias

let 

$$\mathbf R^n \leftarrow \left( 
\begin{bmatrix}
x_1\\
x_2\\
\vdots\\
x_n
\end{bmatrix} | x_i \in \mathbf R \ 1\le i \le n
\right)
$$

Let's assume $$\mathbf V$$ is a subspace of $$\mathbf R^n$$

then 

1: 

$$\mathbf V \ contains  \ \mathbf 0 = \begin{bmatrix}
0\\
\vdots\\
0
\end{bmatrix}
$$

2:

And if $$\vec x \in \mathbf V \ \text{then} \ c\vec x \ \ also \ in \mathbf V$$
This is defined as closure under scalar multiplication 

3:

$$\vec a \in \mathbf V \ and \ \vec b \ \in \mathbf V, \ then \ \vec a + \vec b \ is \ also \ in \mathbf V $$
This is defined as closure under addition

### a trival example in $$\mathbf R^3$$

$$\mathbf V \ = \ {\mathbf 0} = \begin{bmatrix}
0\\
0\\
0\\
\end{bmatrix}
$$

it satisifies the 3 criterias

1: it contains the zero vector.

2: when it is multiplied by any real number scalar c, it is still itself. This implies it is still a member of $$\mathbf 
R^3$$ and satisify closure under multiplication

3: when $$\mathbf V + \mathbf V = \mathbf 0$$, this implies it satisifies closure under addition

so it is a subspace. 

### example 2

$$\mathbf S = { \begin{bmatrix}
x_1\\
x_2
\end{bmatrix}
\in \ \mathbf R^2 | x_1 \ge 0 and x_2 \ge 0 }
$$

is $$\mathbf S$$ a subspace of $$\mathbf R^2$$?

1: 

because $$x_1, x_2 \ge 0$$, so it contains the zero vector. 

2: 

$$
\begin{bmatrix}
a\\
b
\end{bmatrix}
+
\begin{bmatrix}
c\\
d
\end{bmatrix}
=
\begin{bmatrix}
a+c\\
b+d
\end{bmatrix}
$$ 

it satisifies the closure of addition

3: however, if 

$$ -1
\begin{bmatrix}
a\\
b
\end{bmatrix}
=
\begin{bmatrix}
-a\\
-b
\end{bmatrix}
$$ 

This does not satisify the closure of multiplication because the result falls out of the restricted set. 
(it is less than 0)

### example 3

$$let \ \mathbf U = \ span \ (\vec v_1,\vec v_2, \vec v_3)$$

Is it subspace of $$\mathbf R^3$$?

1: if 

$$(0\vec v_1 +0\vec v_2+ 0\vec v_3 = \vec 0)$$ 

so it contains the zero vector. 


2: 

$$\vec X =c_1\vec v_1+c_2\vec v_2+ c_3\vec v_3$$

$$a\vec X =ac_1\vec v_1+ac_2\vec v_2+ ac_3\vec v_3$$

if we let $$ac_i = j_i$$

$$a\vec X =j_1\vec v_1+j_2\vec v_2+ j_3\vec v_3$$

clear, it is just a linear combination of the 3 vectors and it is in the span of the 3 vectors, therefore it satisifies the closure of multiplication. 

3:

$$\vec Y =d_1\vec v_1+d_2\vec v_2+ d_3\vec v_3$$

$$\vec X + \vec Y =(c_1+d_1)\vec v_1+(c_2+d_2)\vec v_2+ (c_3+d_3)\vec v_3$$

It clearly satisify the closure under addition 

so it is a subspace of $$\mathbf R^3$$

## Dot product

### definition 

<p id="geo_def"></p>
Geometric definition 
$$\vec v\cdot\vec w = \left\|v\right\|\left\|w\right\|cos\theta \quad\text{Where}\quad\theta\quad \text{is the angle between}\quad\vec v \ \text{and} \ \vec w \quad and 0 \le \theta\le\pi$$

Algebraic definition 
$$\vec v\cdot\vec w = v_1w_1+v_2w_2+v_3w_3.$$

<p><a href="/linear%20algebra/2015/11/18/proof-linear-algebra/#linear_dependence">see proof</a></p>

### vector into components: projection

From the figure, we see that $$\vec v$$ is broken into two components $$\vec v_{parallel} \ \vec v_{prep}$$ and they are 
perpendicular, respectively, to a given nonzero vector, $$\vec u$$ Figure from [Hughes-Hallett 5e](http://www.amazon.com/Calculus-Single-Variable-Deborah-Hughes-Hallett/dp/0470089156)

![projection](/assets/LinearAlgebra/projection.png)


To compute $$\left\|\vec v_{parallel}\right\| = \left\|\vec v\right\|cos\theta = \vec v\cdot\vec u \quad (since \ \left\|\vec u\right\| =1)$$

then$$\vec v_{parallel}\text{is a scalar multiple of $\vec u$, and since $\vec u$ is a unit vector}$$ 

$$\vec v_{parallel} = (\left\|\vec v\right\|cos\theta)\vec u = (\vec v\cdot\vec u)\vec u.$$ according to the 
<p><a href="#geo_def">geometric definition</a></p> 

$$\vec_{prep} = \vec v - \vec v_{parallel}$$










