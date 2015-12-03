---
layout: post
comments: True
title: Proof in vector space
category: linear algebra
tags: [linear algebra, proof, vector space]
---

* This line is a placeholder to generate the table of contents
{:toc}


## Prove that a vector space has only one zero vector. 

(Exercise 4.2, 19.) 
<!--break-->
Solution: Suppose that z1 and z2 are two zero vectors of the vector space.
Since z1 is a zero vector, and z2 another vector, by the third property (page 189) in the definition of a vector space. 
z2 ⊕z1 =z1 ⊕z2 =z2

Comment: That is, just plug in z1 where you see 0, and z2 where you see u. Similarly, since
z2 is a zero vector, and z1 is another vector, we have:
z1 ⊕z2 =z2 ⊕z1 =z1

By the two equations above, we have
z1 ⊕ z2 = z1 = z2
Thus z1 = z2. That is, any two zero vectors must be equal, so that the zero vector is unique.

3. Prove that a vector u in a vector space has only one negative, -u. (Exercise 4.2, 20.) 

Solution: Suppose that v and w are two additive inverses of u. Since w is an additive inverse

Add v to both sides.

v⊕u⊕w = v⊕0 v⊕u⊕w = v
􏰂 􏰁􏰀 􏰃
0
u⊕w=0
(property 3 in vector space defn)
(property 4, since v is an additive inverse) (property 3)
￼￼0⊕w = v w= v
Thus, w = v, so that the additive inverse of u is unique.


<p id = "linear_dependence"></p>

## proof of linear dependence

$$\vec v_1 = c_2\vec v_2 + c_3\vec c_3 + \cdots c_n\vec v_n$$

Then at least one of the constant is non-zero

$$ 0 = -1\vec v_1 + c_2\vec c_2 + a_3\vec c_3 + \cdots c_n\vec v_n$$

assume c1 is non-zero

$$\vec v_1 + \frac{c_2}{c1}\vec v_2 + \cdots + \frac{c_n}{c_1}\vec v_n = 0$$

<p id = "doc_product_loc"></p>
Suppose that $$0<\theta<\pi, \ \text{so that the vectors} \ \vec v \ and \ \vec w $$  form a triangle. By the law of Cosines

$$\left\|\vec v-\vec w\right\|^2 = \left\|\vec v\right\| + \left\|\vec w\right\| -2\left\|\vec v\right\| cos\theta $$

also true for $$\theta = 0 \ and \ \theta = \pi$$

$$\left\|\vec v\right\|^2 = v_1^2+v_2^2+v_3^2$$

$$\left\|\vec w\right\|^2 = w_1^2+w_2^2+w_3^2$$

$$\left\|\vec v-\vec w\right\|^2 =(v_1-w_1)^2+(v_3-w_3)^2+(v_3-w_3)^2
=v_1^2 -2v_1w_1+w_1^2+v_2^2 - 2v_2w_2 + w_2^2+v_3^2-2v_3w_3+w_3^2
$$

Substitute into the Law of Cosines

$$-2v_1w_1-2v_2w_2-2v_3w_3=-2\left\|\vec v\right\|\left\|\vec w\right\|cos \theta$$

$$v_1w_1-v_2w_2-v_3w_3=\left\|\vec v\right\|\left\|\vec w\right\|cos \theta$$

## proof of projection formula

![projection](http://www.leadinglesson.com/image/ahNzfmxlYWRpbmdsZXNzb24taHJkcg0LEgVJbWFnZRi8vzkM)

let 

$$L = proj_v(\vec x)$$ be shadow of $$\vec x \ onto \ \vec v) $$

then 

$$L = c\vec v| c \in \mathbf R$$

and 

$$\vec x - c\vec v$$ is orthgonal to $$\vec v$$

so if 

$$(\vec x - c\vec ) \cdot \vec v = 0$$

rearrange the formula to get c

$$\vec x \cdot \vec v - c \vec v\cdot\vec v=0$$

$$c= \frac{\vec x\cdot\vec v}{\vec v\cdot\vec v}$$

to input c in the formula earlier 

$$\mathbf L = c\vec v = \frac{\vec x\cdot\vec v}{\vec v\cdot\vec v}\vec v$$

$$\mathbf L = c\vec v = (\vec x\cdot\vec v)\frac{\vec v}{|\vec v|^2}$$
