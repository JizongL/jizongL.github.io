---
layout: post
comments: True
title: One Way ANOVA
category: Statistics
tags: [ANOVA, blocking, One Way ANOVA, stata]
---

Dataset is from Discovering Statistics 2e by Andy Field
/* This example is only for illustration purpose */
** Get the data in

Create the data set

<!--break-->
<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
	<code>
clear
input person str10	dose libido
1	Placebo	3
2	Placebo	2
3	Placebo	1
4	Placebo	1
5	Placebo	4
6	LowDose 5
7	LowDose 2
8	LowDose 4
9	LowDose 2
10	LowDose 3
11	HighDose 7
12	HighDose 4
13	HighDose 5
14	HighDose 3
15	HighDose 6
end


</code>
</pre>
</div>		
drop original variable and rename the new variable to original variable

<pre>
	<code>
	encode dose, generate(_dose) // string to numeric

	drop dose // drop original variable
	rename _dose dose // rename the new variable to original variable
	</code>
</pre>	


The code blow shows that the factor (dose) with three levels

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
	<code>
tab dose 


       dose |      Freq.     Percent        Cum.
------------+-----------------------------------
   HighDose |          5       33.33       33.33
    LowDose |          5       33.33       66.67
    Placebo |          5       33.33      100.00
------------+-----------------------------------
      Total |         15      100.00

. 
end of do-file

	</code>
</pre>	
</div>		

### Exploratory data analysis 

The code blow shows that the grand mean = 3.467 , Variance = 3.124 , SD = 1.767

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
	<code>

summarize libido,d  // grand mean = 3.467 , Variance = 3.124 , SD = 1.767

/* Note the mean, sd and variance by placebo, low dose and high dose */

                           libido
-------------------------------------------------------------
      Percentiles      Smallest
 1%            1              1
 5%            1              1
10%            1              2       Obs                  15
25%            2              2       Sum of Wgt.          15

50%            3                      Mean           3.466667
                        Largest       Std. Dev.       1.76743
75%            5              5
90%            6              5       Variance        3.12381
95%            7              6       Skewness       .3782928
99%            7              7       Kurtosis       2.324677

	</code>
</pre>
</div>		

Use tabstat command to explore the statistics in a more organized table

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
	<code>
tabstat libido, statistics( mean sd semean var ) by(dose)

Summary for variables: libido
     by categories of: dose 

      dose |      mean        sd  se(mean)  variance
-----------+----------------------------------------
  HighDose |         5  1.581139  .7071068       2.5
   LowDose |       3.2   1.30384  .5830952       1.7
   Placebo |       2.2   1.30384  .5830952       1.7
-----------+----------------------------------------
     Total |  3.466667   1.76743  .4563485   3.12381
----------------------------------------------------

. 
end of do-file

	</code>	
</pre>	
</div>		

To plot a box plot

<pre>
	<code>
graph box libido, over(dose)
	</code>		
</pre>	

![ddd](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/graph/viagra_dose.png)

Before we can perform ANOVA, we need to make sure that the variables have equal variance, we can perform a test to check the [groupwise heteroskedasticity](http://www.stata-journal.com/sjpdf.html?articlenum=st0117) of variance as followed. To learn more about the robvar function, you can click [here](http://www.stata.com/manuals13/rsdtest.pdf). 

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
	<code> 

robvar libido, by(dose) 


            |          Summary of libido
       dose |        Mean   Std. Dev.       Freq.
------------+------------------------------------
   HighDose |           5   1.5811388           5
    LowDose |         3.2   1.3038405           5
    Placebo |         2.2   1.3038405           5
------------+------------------------------------
      Total |   3.4666667   1.7674302          15

W0  =  0.09169054   df(2, 12)     Pr > F = 0.91302045

W50 =  0.11764706   df(2, 12)     Pr > F = 0.89002252

W10 =  0.09169054   df(2, 12)     Pr > F = 0.91302045

. 
end of do-file

	</code>	
</pre>
</div>		

From the above result, p-value for W0 is greater than 0.05 alpha level, so it is not significantly different and we can assume variance is equal across all variables.

Now we can move on to perform ANOVA One Way

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
	<code>
oneway libido dose


                        Analysis of Variance
    Source              SS         df      MS            F     Prob > F
------------------------------------------------------------------------
Between groups      20.1333333      2   10.0666667      5.12     0.0247
 Within groups            23.6     12   1.96666667
------------------------------------------------------------------------
    Total           43.7333333     14   3.12380952

Bartlett's test for equal variances:  chi2(2) =   0.1853  Prob>chi2 = 0.912

. 
end of do-file

. 

	</code>		
</pre>	
</div>		

From the result above, we see that there was a significant effect of Viagra on the levels of libido, (F2,12) = 5.12, $$ p < 0.05 $$ However, ANOVA alone does not tell us which pair of variables 




<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
	<code>

. oneway libido dose, bonferroni scheffe

                        Analysis of Variance
    Source              SS         df      MS            F     Prob > F
------------------------------------------------------------------------
Between groups      20.1333333      2   10.0666667      5.12     0.0247
 Within groups            23.6     12   1.96666667
------------------------------------------------------------------------
    Total           43.7333333     14   3.12380952

Bartlett's test for equal variances:  chi2(2) =   0.1853  Prob>chi2 = 0.912

                         Comparison of libido by dose
                                (Bonferroni)
Row Mean-|
Col Mean |   HighDose    LowDose
---------+----------------------
 LowDose |       -1.8
         |      0.196
         |
 Placebo |       -2.8         -1
         |      0.025      0.845

                         Comparison of libido by dose
                                  (Scheffe)
Row Mean-|
Col Mean |   HighDose    LowDose
---------+----------------------
 LowDose |       -1.8
         |      0.170
         |
 Placebo |       -2.8         -1
         |      0.027      0.547

. 
end of do-file

	</code>
</pre>	
</div>		
