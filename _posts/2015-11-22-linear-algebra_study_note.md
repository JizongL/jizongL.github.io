---
layout: post
comments: True
title: Linear Algebra study note
category: linear algebra
tags: [vector ,linear algebra]
---

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

To find a line passes through both $$\vec X and \vec V$$, use either

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

<!--break-->
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

we see that $$\{\vec r_1,\vec r_3,\vec r_4\} $$ are linear independent and for the basis of $$\mathbf A_e$$, and the 1s in these column vectors are also called the [pivot entries](https://en.wikibooks.org/wiki/Linear_Algebra/Row_Reduction_and_Echelon_Forms#Pivot_Positions). Moreover, $$\{\vec r_3,\vec r_5\}$$ can be represented as linear combinations of $$\{\vec r_1,\vec r_3,\vec r_4\}$$




Therefore, we can conclude that  $$\{\vec a_1,\vec a_2,\vec a_3,\vec a_4, \vec a_5\} in \mathbf A$$ are also linear independent and they are the basis of $$\mathbf A$$

And the Rank of A is just the dimension of the basis, so $$rank(\mathbf A) = 3$$





