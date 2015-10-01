---
layout: post
comments: True
title: Interaction effect in Two Way ANOVA with Stata
category: Statistics
tags: [ANOVA, blocking, Randomized complete blocked design, stata]
---

An anthropologist was interested in the effect of alcohol on MATE selection at night clubs. Her rationale was that after alcohol had been consumed subjective perception of physical attractiveness would become more inaccurate also known as ["beer-goggles effect"](https://en.wikipedia.org/wiki/Alcohol_and_sex). 

<!--break-->

![goggleeffect](http://www.thatsnerdalicious.com/wp-content/uploads/2010/08/500x_beer-goggles.web_01.jpg)

She picked 48 students: 24 Males and 24 Females. She then took groups of 8 participants to the night club and gave them no alcohol (participant received placebo drinks of alcohol-free lager), 2 pints of strong lager, or 4 pints of strong lager. At the end of evening she took photograph of the person that the participant was chatting up. She then got the pool of independent judges to assess the attractiveness of the person in each photograph (out of 100). See the datafile. 

you can download the[do file here](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/doFiles/googles-2.do) and the [Bear Goggle effect dataset here](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/interaction/goggles-2.dta)

The followings are step by step tutorial on how to perform Two Way ANOVA with interaction effects with Stata. 

### Step 1

Import the dataset (if you use the [do file](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/interaction/goggles-2.dta",clear) download here, the dataset address is already set up, you can simply just run the do file) 



<pre>
	<code>
. use "https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/interac
> tion/goggles-2.dta",clear

. 
end of do-file

. 
	</code>		
</pre>


### Step 2

Examine the dataset by clicking the [Data Editor] icon. 

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
	<code>
Gender	Alcohol	Attractiveness
Female	None	65
Female	None	70
Female	None	60
Female	None	60
Female	None	60
Female	None	55
Female	None	60
Female	None	55
Female	2 Pints	70
Female	2 Pints	65
Female	2 Pints	60
Female	2 Pints	70
Female	2 Pints	65
Female	2 Pints	60
Female	2 Pints	60
Female	2 Pints	50
Female	4 Pints	55
Female	4 Pints	65
Female	4 Pints	70
Female	4 Pints	55
Female	4 Pints	55
Female	4 Pints	60
Female	4 Pints	50
Female	4 Pints	50
Male	None	50
Male	None	55
Male	None	80
Male	None	65
Male	None	70
Male	None	75
Male	None	75
Male	None	65
Male	2 Pints	45
Male	2 Pints	60
Male	2 Pints	85
Male	2 Pints	65
Male	2 Pints	70
Male	2 Pints	70
Male	2 Pints	80
Male	2 Pints	60
Male	4 Pints	30
Male	4 Pints	30
Male	4 Pints	30
Male	4 Pints	55
Male	4 Pints	35
Male	4 Pints	20
Male	4 Pints	45
Male	4 Pints	40

	</code>		
</pre>	
</div>



We see that names of the variables are not all lower case, so let's change them to lower case for easy data management
<pre>
	<code>
rename Gender gender
rename Alcohol alcohol
rename Attractiveness attract
	</code>
</pre>	

### Step 3

Basic exploratory data analysis

Use [codebook](http://www.stata.com/help.cgi?codebook) to see general details about the dataset. We see there is no missing value, there are two labels male and female for gender variable, and 3 labels, *None* ,*2 Pint*, *4 Pints* for the alcohol variable. 

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
	<code>
. codebook

--------------------------------------------------------------------------------------------------------------------
gender                                                                                                        Gender
--------------------------------------------------------------------------------------------------------------------

                  type:  numeric (byte)
                 label:  GENDER

                 range:  [0,1]                        units:  1
         unique values:  2                        missing .:  0/48

            tabulation:  Freq.   Numeric  Label
                            24         0  Male
                            24         1  Female

--------------------------------------------------------------------------------------------------------------------
alcohol                                                                                          Alcohol Consumption
--------------------------------------------------------------------------------------------------------------------

                  type:  numeric (byte)
                 label:  ALCOHOL

                 range:  [1,3]                        units:  1
         unique values:  3                        missing .:  0/48

            tabulation:  Freq.   Numeric  Label
                            16         1  None
                            16         2  2 Pints
                            16         3  4 Pints

--------------------------------------------------------------------------------------------------------------------
attract                                                                                       Attractiveness of Date
--------------------------------------------------------------------------------------------------------------------

                  type:  numeric (byte)

                 range:  [20,85]                      units:  1
         unique values:  13                       missing .:  0/48

                  mean:   58.3333
              std. dev:   13.8123

           percentiles:        10%       25%       50%       75%       90%
                                35      52.5        60      67.5        75
	</code>		
</pre>	
</div>

### step 4

Use [describe](http://www.stata.com/help.cgi?describe) to examine dataset structure. 

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
	<code>
. describe

Contains data from https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module
> %203/interaction/goggles-2.dta
  obs:            48                          
 vars:             3                          
 size:           144                          
--------------------------------------------------------------------------------------------------------------------
              storage   display    value
variable name   type    format     label      variable label
--------------------------------------------------------------------------------------------------------------------
gender          byte    %8.0g      GENDER     Gender
alcohol         byte    %8.0g      ALCOHOL    Alcohol Consumption
attract         byte    %8.0g                 Attractiveness of Date
--------------------------------------------------------------------------------------------------------------------
Sorted by: alcohol
     Note: Dataset has changed since last saved.

. 
end of do-file

. 

	</code>
</pre>			
</div>

### Step 5

Use [summary](http://www.stata.com/help.cgi?summarize) to obtain statistics on the variable attract. We see that the grand mean is 58.33333 and there are 48 observation, so degree of freedom is 47. 
<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	

. sum attract // only attract: Grand Mean, n=48 so df=n-1 = 48-1 = 47

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
     attract |         48    58.33333    13.81232         20         85

. 
end of do-file

. 
	</code>
</pre>	
</div>

### step 6

Let's examine the mean for *attract* by gender

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	
. by gender, sort : summarize attract // Means for gender

--------------------------------------------------------------------------------------------------------------------
-> gender = Male

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
     attract |         24    56.45833    18.50259         20         85

--------------------------------------------------------------------------------------------------------------------
-> gender = Female

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
     attract |         24    60.20833    6.338147         50         70


. 
end of do-file

. 
	</code>
</pre>	
</div>

Let's examine the mean of *attract* by alcohol

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	
. by alcohol, sort : summarize attract //Means for Alcohol

--------------------------------------------------------------------------------------------------------------------
-> alcohol = None

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
     attract |         16       63.75    8.465617         50         80

--------------------------------------------------------------------------------------------------------------------
-> alcohol = 2 Pints

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
     attract |         16     64.6875    9.911063         45         85

--------------------------------------------------------------------------------------------------------------------
-> alcohol = 4 Pints

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
     attract |         16     46.5625    14.34326         20         70


. 
end of do-file

. 
	</code>
</pre>	
</div>

Let's examine mean of *attract* by *Male* and *Alcohol*


<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	
. tabstat attract if gender==0, statistics( mean sd min max ) by(alcohol) //otherway of doing it

Summary for variables: attract
     by categories of: alcohol (Alcohol Consumption)

alcohol |      mean        sd       min       max
--------+----------------------------------------
   None |    66.875   10.3294        50        80
2 Pints |    66.875  12.51784        45        85
4 Pints |    35.625  10.83562        20        55
--------+----------------------------------------
  Total |  56.45833  18.50259        20        85
-------------------------------------------------

. 
end of do-file

. 


	</code>
</pre>	
</div>

Let's examine mean of *attract* by *Female* and *Alcohol*

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	
. tabstat attract if gender==1, statistics( mean sd min max ) by(alcohol) //otherway of doing it

Summary for variables: attract
     by categories of: alcohol (Alcohol Consumption)

alcohol |      mean        sd       min       max
--------+----------------------------------------
   None |    60.625  4.955156        55        70
2 Pints |      62.5  6.546537        50        70
4 Pints |      57.5  7.071068        50        70
--------+----------------------------------------
  Total |  60.20833  6.338147        50        70
-------------------------------------------------

. 
end of do-file

. 

	</code>
</pre>	
</div>			

Let's put the previous two tables into 1 for *Means* by *gender*

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	

. table alcohol gender, contents(mean attract) //Means by gender

--------------------------
Alcohol   |
Consumpti |     Gender    
on        |   Male  Female
----------+---------------
     None | 66.875  60.625
  2 Pints | 66.875    62.5
  4 Pints | 35.625    57.5
--------------------------

. 
end of do-file

	</code>
</pre>	
</div>		

### Step 7

Let's make some boxplots to visually examine if there is difference between variables

1: Box Plot of attract by alcohol 
<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	
graph box attract ///
      , over(alcohol) ///
	   ytitle(Attractivness of Date)        ///
	   ytitle(, size(huge))                 ///
	   title(Attractiveness by Amount of Alcohol, size(huge)) ///
	   name(f)			
	</code>
</pre>	
</div>	

![attractOverAlcohol](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/graph/attractivenessByAlcohol.png)

From the plot, we see that in general, the *4-Pints* dose level might be different from the rest. 

2: Box Plot of attract by gender
<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	
graph box attract ///
      , over(gender) ///
	   ytitle(Attractivness of Date)        ///
	   ytitle(, size(huge))                 ///
	   title(Attractiveness by Gender, size(huge)) ///
	   name(g)
	</code>
</pre>	
</div>	

![attractOverGender](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/graph/attractivenessByGender.png)

From the plot, we observe that there might be no significant difference between *male* and *female*

Now let's plot the interaction effect between gender and alcohol dose levels.  
<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	
graph box attract ///
     , over(alcohol, label(labsize(large))) ///
	   over(gender, label(labsize(huge)))   ///
	   ytitle(Attractivness of Date)        ///
	   ytitle(, size(huge))                 ///
	   title(Beer Goggle Effect, size(huge)) ///
	   name(ga)
	   	</code>
</pre>	
</div>	

![attract/genderAndalcohol](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/graph/attractivenessByGender%26Alcohol.png)

From the plot, we can observe that there is signficiant difference in the 4-Pints alcohol effect over Male, while its effect on female does not vary much. 

Now, let's run a *Two Way ANOVA* with interaction between alcohol and gender. 
<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	
. anova attract gender alcohol i.alcohol#i.gender // Interaction between Gender and Alcohol

                         Number of obs =         48    R-squared     =  0.6111
                         Root MSE      =    9.11239    Adj R-squared =  0.5648

                  Source | Partial SS         df         MS        F    Prob>F
          ---------------+----------------------------------------------------
                   Model |  5479.1667          5   1095.8333     13.20  0.0000
                         |
                  gender |     168.75          1      168.75      2.03  0.1614
                 alcohol |  3332.2917          2   1666.1458     20.07  0.0000
          alcohol#gender |   1978.125          2    989.0625     11.91  0.0001
                         |
                Residual |     3487.5         42   83.035714  
          ---------------+----------------------------------------------------
                   Total |  8966.6667         47   190.78014  

. 
end of do-file

. 
	   	</code>
	</pre>	
</div>	

From the result, we see that p values for gender is greater than 0.05 alpha level and the rest are not. So, there are significant differences for the model in general, alcohol, alcohol and gender combined. 

### step 8
Let's caculate [margins](http://www.stata.com/help.cgi?margins) for alcohol and gender margin plot to further examine the interaction effect between gender and alcohol on attractiveness. 

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	
. margins i.alcohol#i.gender //to make interaction plot

Adjusted predictions                            Number of obs     =         48

Expression   : Linear prediction, predict()

---------------------------------------------------------------------------------
                |            Delta-method
                |     Margin   Std. Err.      t    P>|t|     [95% Conf. Interval]
----------------+----------------------------------------------------------------
 alcohol#gender |
     None#Male  |     66.875   3.221718    20.76   0.000     60.37331    73.37669
   None#Female  |     60.625   3.221718    18.82   0.000     54.12331    67.12669
  2 Pints#Male  |     66.875   3.221718    20.76   0.000     60.37331    73.37669
2 Pints#Female  |       62.5   3.221718    19.40   0.000     55.99831    69.00169
  4 Pints#Male  |     35.625   3.221718    11.06   0.000     29.12331    42.12669
4 Pints#Female  |       57.5   3.221718    17.85   0.000     50.99831    64.00169
---------------------------------------------------------------------------------

. 
end of do-file

marginsplot ///
  , xdimension(alcohol) ///
  plotdimension(gender) ///
  plotopts(lwidth(medthick) msize(large)) ///
  ciopts(lwidth(thick) msize(vlarge)) ///
  ytitle(, size(large)) ///
  legend(size(large)) 
. 
	   	</code>
	</pre>	
</div>	

![marginplot](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/graph/marginplot2.png)

The figure above clearly shows that for females, alcohol has very little effect: the attractiveness of their selected partners is quite stable across the three conditions. However for men, the attractiveness of their partners is stable when only small amount has been drunk, but rapidly declines when more is drunk. The interaction tells us that alcohol has little effect on mate selection until 4 pints have been drunk and the alcohol is prevalent in male participants.

**Note:** Under main effects “gender” was not significant this shows sometimes mains effects can be misleading.

### Step 9
PostHoc test

In order to find out if there a statistical significant difference in the mean attractive score among alcohol levels, and if there is a statistical significant difference in the mean attractive score among gender levels, we can run a [post hoc tukey test](http://www.ats.ucla.edu/stat/stata/faq/pairwise.htm) for alcohol effect


**mean attractive score among alcohol levels**

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	
. pwcompare alcohol, mcompare(tukey) effects sort //post hoc for alcohol effect same as one way anova

Pairwise comparisons of marginal linear predictions

Margins      : asbalanced

---------------------------
             |    Number of
             |  Comparisons
-------------+-------------
     alcohol |            3
---------------------------

-------------------------------------------------------------------------------------
                    |                              Tukey                Tukey
                    |   Contrast   Std. Err.      t    P>|t|     [95% Conf. Interval]
--------------------+----------------------------------------------------------------
            alcohol |
4 Pints vs 2 Pints  |    -18.125   3.221718    -5.63   0.000    -25.95214   -10.29786
   4 Pints vs None  |   -17.1875   3.221718    -5.33   0.000    -25.01464   -9.360355
   2 Pints vs None  |      .9375   3.221718     0.29   0.954    -6.889645    8.764645
-------------------------------------------------------------------------------------

. 
end of do-file

	   	</code>
	</pre>	
</div>	

**mean attractive score among gender levels**

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
	<pre>
		<code>	
. pwcompare gender, mcompare(tukey) effects sort //post hoc for alcohol effect same as one way anova

Pairwise comparisons of marginal linear predictions

Margins      : asbalanced

note: option tukey ignored since there is only one comparison
---------------------------------------------------------------------------------
                |                            Unadjusted           Unadjusted
                |   Contrast   Std. Err.      t    P>|t|     [95% Conf. Interval]
----------------+----------------------------------------------------------------
         gender |
Female vs Male  |       3.75   2.630521     1.43   0.161    -1.558607    9.058607
---------------------------------------------------------------------------------

. 
end of do-file

. 
	   	</code>
	</pre>	
</div>	


**Reporting results:**

There was a significant main effect of the amount of alcohol consumed at the night club on the attractiveness of the mate they selected, **F(2,42)=20.07,p<0.001.** 

There was no significant main effects of gender on the attractiveness of selected mates, **F(1,42)=2.03,p=0.0.161.**  
There was a significant interaction effect between the amount of alcohol consumed and the gender of person selecting a mate, on the attractiveness of the partner selected **F (2,42)=11.91,p<0.001.**This indicated that male and female genders were affected differently by alcohol. Attractiveness of partners selected by males (mean=35.63, SD=10.84) was significantly lower than those selected by females **(Mean=57.50, SD=7.07)** after 4 pints.


**References**

[Discovering Statistics using SPSS by Andy Field](http://www.amazon.com/Discovering-Statistics-Using-SPSS-Edition/dp/1446249182)



