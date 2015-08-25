---
layout: post
title: Graphing with Stata Part I
comments: True
---

 Analytical graphics have always been one of Stata’s strengths, and reason enough for many users to choose Stata over other packages. Attractive and publishable basic graphs are easy to draw, using commands or choices from the menus under Graphics. Users who imagine more elaborate or creative graphs will find their efforts supported by an impressive array of tools and options, described in the Graphics Reference Manual, and illustrated by many examples in A Visual Guide to Stata Graphics (Mitchell 2012).
<!--break-->
 The above statement was taken from[2012 Statistics with Stata 12-8](http://www.stata.com/bookstore/statistics-with-stata/)
 by Lawrence C. Hamilton and it shows how important it is to develop good statistical graphing skills as a statistican. In this tutorial series, I will share how to use some of the most useful graphing techinques with Stata and I hope it is helpful to you. Let's get started and go through some examples one by one. 


## Import and explore the data set
We use the data set [Nations2.dta](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/Nations2.dta) in this tutorial, you could either download it and manually import it to Stata or you can simply use the following code to import the data set. 

{% highlight liquid %}
{% raw %}
use https://dl.dropboxusercontent.com/u/49272502/stata%20blog/Nations2.dta, clear
{% endraw %}
{% endhighlight %}

Next, use describe have an idea how the data looks like.

{% highlight liquid %}
{% raw %}
describe 
{% endraw %}
{% endhighlight %}


### Histogram

First, let's plot a basic histogram for the variable adfert, which stands for adolescent fertility rate.

{% highlight liquid %}
{% raw %}
histogram adfert, percent
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/hist1.png)

Looking at the result, we can tell that the distribution is positively skew, with a mode not far above 0 and upper limit around 200. However, it is hard to describe the graph more specifically because the bars do not line up with the x axis tick marks. We can do a little improvement with the *options* , for example

* **frequency** 	Frequencies are shown on the vertical (y) axis.
* **start(0)**	The histogram’s first bar (bin) starts at 0.
* **width(10)**	The width of each bar (bin) is 10.
* **xlabel(0(20)200)**	The x axis is labeled from 0 to 200, in increments of 20.
* **xtick(10(20)210)**	The x axis has tick marks from 10 to 210, in increments of 20.
* **ylabel(0(5)35, grid gmax)** The y axis is labeled from 0 to 35, in increments of 5. A grid of horizontal lines is drawn, including a * line at the maximum value. 
* **title("Adolescent fertility rate in 194 nations")** 	The graph has a title at top.


You can put all of the above items together in the following fashion

{% highlight liquid %}
{% raw %}
histogram adfert, frequency start(0) width(10) xlabel(0(20)200) xtick(10(20)210)
ylabel(0(5)35, grid gmax)
title("Adolescent fertility rate in 194 nations")
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/hist2.png)

How, we can see the improved result describes the distribution more specifically. For example, we now see that in 34 nations, the adolescent fertility rates are between 10 and 20. You can type **help histogram** in stata console to learn more about histogram plotting. 

To explore the variable *adfert* further, we can use a **by**(varname) option. For example, if we want to illustrate with histograms of *adfert* for each of the five regions, along with a sixth **(total)** histogram showing the distribution for all nations. We can use the following code

{% highlight liquid %}
{% raw %}
histogram adfert, percent start(0) width(10) by(region, total)
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/hist3.png)

Next, we explore the Box Plots

### Box Plots

Box plots convey information about center, spread, symmetry and outliers at a glance. For example 

{% highlight liquid %}
{% raw %}
graph box adfert
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/box1.png)

The result confirms the positive skew of this distribution, and shows five high outliers. The box plot extends from approximately 1st to third quartiles, a distance called the interquartile range (IQR). 

If we want to identify the adfert outliers by with labels, we can add a **marker** option as follow.

{% highlight liquid %}
{% raw %}
graph box adfert, marker(1, mlabel(country)) ytitle("Births per 1,000 females 15-19")
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/box2.png)

Now, if we want to compare the distributions of *adfert* from all 5 regions with a baseline, for instance 40, as well as labelling the outliers with their country names. We can use the option **over** and the **yline()** as following. 

{% highlight liquid %}
{% raw %}
graph box adfert, marker(1, mlabel(country)) yline(39.3) over(region)
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/box3.png)

We can also plot the boxplots horizontally by using the command **hbox**

{% highlight liquid %}
{% raw %}
graph hbox co2, over(region)
note("note: {bf:Statistics with Stata}, version 12") caption("caption: United Nations Human Development Report 2011") title("title: {it:Example of horizontal box plots}") ytitle("ytitle: Tons of CO{subscript:2} emitted per capita")
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/box4.png)

Note that individual outliers are not labeled in the figure because they would be hard to read in the horizontal format. To explore more about boxplot you can type **help graph box** in the console. Now, we are going to explore Scatterplots and Overlays

### Scatterplots and Overlays

Stata's basic scatterplot command has the form 

{% highlight liquid %}
{% raw %}
graph twoway scatter y x
{% endraw %}
{% endhighlight %}

Now, let's make a twoway scatterplot with the variable **life** and **school**

{% highlight liquid %}
{% raw %}
graph twoway scatter life school
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/scatter1.png)


To make thing more interesting, we can manipulate the **frequency weight feature** with **[fweight = varname]** as follow 

{% highlight liquid %}
{% raw %}
graph twoway scatter life school [fweight=pop], msymbol(Oh)
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/scatter2.png)

The result is simply a redrawn scatterplot of *life* againist *school*, but make the symbol size reflect each country's population *pop*. Note that it also include **msymbol(Oh)** to change the default dot from the previous scatterplot into *hollow circle*. 

Now, let's explore a key feature of Stata's graph twoway family, that is we can overlay two or more graphs to build a more complex images. For example, we can plot a regression lines **lfit) on top of the scatter plot.

{% highlight liquid %}
{% raw %}
twoway (scatter life school, msymbol(Oh))(lfit life school, lwidth(medthick))
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/scatter3.png)

We can also add x and y labels and tick mark as well as legend, for example

{% highlight liquid %}
{% raw %}
twoway (scatter life school, msymbol(Oh))(lfit life school, lwidth(medthick)ylabel(45(5)85) xlabel(2(2)12) xtick(1(2)13) legend(col(1) ring(0) position(11)))
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/scatter4.png)

note
The *legend option* in the figure specifies three things:

* **col(1)** The legend should have just one column, and hence two rows.
* **ring(0)** The legend is placed within the plot region, instead of outside it.
* **position(11)** The legend goes at the *11 o’clock position*, which in this graph happens to
be empty of data.

Finally, let's try to graph a more advanced regression scatterplot shows also the confident bands for the *conditonal mean of y*.  We can do so with the command **lfitci** and **stdp**. note that the *ci* in **lfitci** refers to *confident interval* and **stdp** refers to standard erors for the conditional mean as "standard deviation of prediction" 

{% highlight liquid %}
{% raw %}
twoway (lfitci life school, stdp)(scatter life school, msymbol(Th))(scatter life school if school > 8 & life < 55, msymbol(S) mlabel(country)legend(col(1) ring(0) position(11) label(3 "Life expectancy")order(3 2 1)))
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/scatter5.png)

From the result, we see that normal data points are plotted as hollow triangles and the two outliers are solid squares. This can be accomplished by the option **msymbol(Th)** and **msymbol(S)** and you can type **help scatter** to learn more about the other options. 

Lastly, we wrap up this tutorial with introducing the **scatterplot matrices**. Scatterplot matrices are different from other twoway plots types that it can not be overlaid. Nevertheless, it is possible to include multiple plots in a single plot and it follows the same marker symbol conventions. Let's create an example. 

{% highlight liquid %}
{% raw %}
graph matrix gdp school adfert chldmort life, half msymbol(oh)
{% endraw %}
{% endhighlight %}

![My helpful screenshot](/assets/stata/graphing/scatter6.png)

From the result, we see that scatterplot mattrix is the visual counterpart to a correlation mattrix, which is very helpful tool for multivariate analysis. It shows the relationships between variables pairs and thus helpful for the detection of **nonlinear relationships**. For instance, the scatterplot matrix above shows that *gdp* (per capita Gross Domestic Product) seems to be nonlinearly distributed and we could not have detected this pattern through correlation matrix alone. You can type **help graph matrix** to learn more about scatterplot mattrix. 

Congradulation, now you have completed part I of this tutorial and in part II we will explore **Line Plots and Connected-Line Plots**. Thank you for sticking around and please leave your comment and advise so that I can imporve it. 
