---
layout: post
comments: True
title: Randomized complete blocked design
category: Statistics
tags: [ANOVA, blocking, Randomized complete blocked design, stata]
---

## Randomized complete blocked design

### Question 2 

The nursing supervisor in a local health department is studying the influence of time of day on length of home visits (mins.) by the nursing staff. Individual differences among nurses might be large, so the nurse was used as a blocking factor. Does the time of day of the home visit influence the length of home visits?

<!--break-->

You can download the *do* file [here](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/doFiles/Daniel%20Ch_8_Ex_24_rcbd-2.do)

You can download the [Daniel EX 8_3_4.dta here](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/TwoWay%20Anova/Daniel%20Ch_8_Ex_24_rcbd-2.dta)

(Page 379 from Daniel 9th ed.) The aggression scores of 30 Lab animals reared under three different conditions. One animal from each of 10 litters were randomly assigned to each of the three rearing conditions (dataset Daniel Ch_8_Ex_24.dta).
Question: Do these data provide sufficient evidence to indicate that the level of crowding has an effect on aggression? Let alpha=0.05.
Solution: Step 1) Explore Data

####Step 1

Exploratory data analysis

<pre>
<code>
. codebook

--------------------------------------------------------------------------------------------------------------------
litter                                                                                                        LITTER
--------------------------------------------------------------------------------------------------------------------

                  type:  numeric (byte)

                 range:  [1,10]                       units:  1
         unique values:  10                       missing .:  0/30

                  mean:       5.5
              std. dev:   2.92138

           percentiles:        10%       25%       50%       75%       90%
                               1.5         3       5.5         8       9.5

--------------------------------------------------------------------------------------------------------------------
scores                                                                                                        SCORES
--------------------------------------------------------------------------------------------------------------------

                  type:  numeric (byte)

                 range:  [10,35]                      units:  1
         unique values:  6                        missing .:  0/30

            tabulation:  Freq.  Value
                             8  10
                             1  15
                             9  20
                             4  25
                             7  30
                             1  35

--------------------------------------------------------------------------------------------------------------------
cond                                                                                                            COND
--------------------------------------------------------------------------------------------------------------------

                  type:  string (str3)

         unique values:  3                        missing "":  0/30

            tabulation:  Freq.  Value
                            10  "EXT"
                            10  "MOD"
                            10  "NOT"

. 
end of do-file

. 
</code>
</pre>

Check dataset structure

<pre>
 <code>
. describe

Contains data from https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module
> %203/TwoWay%20Anova/Daniel%20Ch_8_Ex_24_rcbd-2.dta
  obs:            30                          
 vars:             3                          23 May 2012 16:46
 size:           150                          
--------------------------------------------------------------------------------------------------------------------
              storage   display    value
variable name   type    format     label      variable label
--------------------------------------------------------------------------------------------------------------------
litter          byte    %8.0g                 LITTER
scores          byte    %8.0g                 SCORES
cond            str3    %9s                   COND
--------------------------------------------------------------------------------------------------------------------
Sorted by: 

. 
end of do-file

. 
 </code>
</pre>

Data is sorted by “cond” so each litter are clumped by type of condition, it doesn’t matter the in which way its sorted, sometimes it good to sort in different ways to understand data structure.

<pre>
	<code>
. by cond, sort : summarize scores, format

--------------------------------------------------------------------------------------------------------------------
-> cond = EXT

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
      scores |         10        28.5    4.116363         20         35

--------------------------------------------------------------------------------------------------------------------
-> cond = MOD

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
      scores |         10        20.5    5.502525         10         30

--------------------------------------------------------------------------------------------------------------------
-> cond = NOT

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
      scores |         10          13    4.830459         10         20


. 

. tabstat scores, stat( mean sd) by(cond)

Summary for variables: scores
     by categories of: cond (COND)

  cond |      mean        sd
-------+--------------------
   EXT |      28.5  4.116363
   MOD |      20.5  5.502525
   NOT |        13  4.830459
-------+--------------------
 Total |  20.66667  7.958224
----------------------------

. 

	</code>
</pre>

####Step 2

Since “cond” is a string variable, there is a need to convert it to numeric

<pre>
	<code>
. gen _cond=.
(30 missing values generated)

. replace _cond=2 if cond=="EXT" & !missing(cond)
(10 real changes made)

. replace _cond=1 if cond=="MOD" & !missing(cond)
(10 real changes made)

. replace _cond=0 if cond=="NOT" & !missing(cond)
(10 real changes made)

. 
end of do-file

. do "/var/folders/nc/tpl2k1rx68d_xgzmz310w_fc0000gn/T//SD02136.000000"

. label define cond 2 "EXT" 1 "MOD" 0 "NOT"

. label value  _cond cond

. 
end of do-file

	</code>
</pre>

Double check the newly generated _cond variable aligns with the original cond
<pre>
	<code>

 tab2 _cond cond //check your code

-> tabulation of _cond by cond  

           |               COND
     _cond |       EXT        MOD        NOT |     Total
-----------+---------------------------------+----------
       NOT |         0          0         10 |        10 
       MOD |         0         10          0 |        10 
       EXT |        10          0          0 |        10 
-----------+---------------------------------+----------
     Total |        10         10         10 |        30 


. 
end of do-file

. 
	</code>
</pre>

drop the original cond variable and rename the _cond variable to cond

<pre>
	<code>

. drop cond 

. 
. rename _cond cond 

. 
end of do-file

	</code>
</pre>

Summary

<pre>
	<code>
. by cond, sort : summarize scores, format //summary

--------------------------------------------------------------------------------------------------------------------
-> cond = NOT

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
      scores |         10          13    4.830459         10         20

--------------------------------------------------------------------------------------------------------------------
-> cond = MOD

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
      scores |         10        20.5    5.502525         10         30

--------------------------------------------------------------------------------------------------------------------
-> cond = EXT

    Variable |        Obs        Mean    Std. Dev.       Min        Max
-------------+---------------------------------------------------------
      scores |         10        28.5    4.116363         20         35


. 
end of do-file

	</code>
</pre>

estimate means by condition and by litter
<pre>
	<code>
. tabstat scores, stat( mean sd semean) by(cond) //means by condition

Summary for variables: scores
     by categories of: cond 

  cond |      mean        sd  se(mean)
-------+------------------------------
   NOT |        13  4.830459  1.527525
   MOD |      20.5  5.502525  1.740051
   EXT |      28.5  4.116363  1.301708
-------+------------------------------
 Total |  20.66667  7.958224  1.452966
--------------------------------------

. 
end of do-file

. do "/var/folders/nc/tpl2k1rx68d_xgzmz310w_fc0000gn/T//SD02136.000000"

. mean scores,over(cond) // Mean Estimation by condition

Mean estimation                   Number of obs   =         30

          NOT: cond = NOT
          MOD: cond = MOD
          EXT: cond = EXT

--------------------------------------------------------------
        Over |       Mean   Std. Err.     [95% Conf. Interval]
-------------+------------------------------------------------
scores       |
         NOT |         13   1.527525       9.87586    16.12414
         MOD |       20.5   1.740051       16.9412     24.0588
         EXT |       28.5   1.301708      25.83771    31.16229
--------------------------------------------------------------

. 
end of do-file

. do "/var/folders/nc/tpl2k1rx68d_xgzmz310w_fc0000gn/T//SD02136.000000"

. tabstat scores, stat( mean sd) by(litter) //means by litter

Summary for variables: scores
     by categories of: litter (LITTER)

  litter |      mean        sd
---------+--------------------
       1 |        20        10
       2 |        20        10
       3 |        20        10
       4 |  16.66667  7.637626
       5 |  26.66667  7.637626
       6 |        20        10
       7 |  16.66667  5.773503
       8 |  23.33333  11.54701
       9 |        20  8.660254
      10 |  23.33333  5.773503
---------+--------------------
   Total |  20.66667  7.958224
------------------------------

. mean scores,over(litter) //mean estimation by litter

Mean estimation                   Number of obs   =         30

            1: litter = 1
            2: litter = 2
            3: litter = 3
            4: litter = 4
            5: litter = 5
            6: litter = 6
            7: litter = 7
            8: litter = 8
            9: litter = 9
           10: litter = 10

--------------------------------------------------------------
        Over |       Mean   Std. Err.     [95% Conf. Interval]
-------------+------------------------------------------------
scores       |
           1 |         20   5.773503      8.191861    31.80814
           2 |         20   5.773503      8.191861    31.80814
           3 |         20   5.773503      8.191861    31.80814
           4 |   16.66667   4.409586      7.648052    25.68528
           5 |   26.66667   4.409586      17.64805    35.68528
           6 |         20   5.773503      8.191861    31.80814
           7 |   16.66667   3.333333      9.849235     23.4841
           8 |   23.33333   6.666667      9.698469     36.9682
           9 |         20          5      9.773852    30.22615
          10 |   23.33333   3.333333       16.5159    30.15077
--------------------------------------------------------------

. 
end of do-file

	
</code>
</pre>

####Step 3

Plot a box Plot

<pre>
	<code>
/*Box Plot */
graph box scores ///
    , over(cond) ///
	ytitle(Aggression Scores) ytitle(, size(large)) ///
	title(Distrubution of Aggression Scores by Living Condition Type, size(medlarge))
	</code>
</pre>

![ddd](https://dl.dropboxusercontent.com/u/49272502/stata%20blog/ID740%20course%20material%20blog/module%203/graph/danielCh8Ex24Boxplot.png)

####Step 4

Before moving on to ANOVA: Check the assumption of model additivity
<pre>
	<code>
findit nonadd // install this package

nonadd scores cond litter // code for checking the assumption

Tukey's test of nonadditivity (Ho: model is additive)
SS nonadd =   df = 1
F (1,17) = .04801813   Pr > F: .82915782

. 
end of do-file
	</code>
</pre>

####Step 5

Perform One Way ANOVA
<pre>
	<code>
/* ANOVA model */
anova scores cond litter


                         Number of obs =         30    R-squared     =  0.7922
                         Root MSE      =    4.60475    Adj R-squared =  0.6652

                  Source | Partial SS         df         MS        F    Prob>F
              -----------+----------------------------------------------------
                   Model |       1455         11   132.27273      6.24  0.0003
                         |
                    cond |  1201.6667          2   600.83333     28.34  0.0000
                  litter |  253.33333          9   28.148148      1.33  0.2901
                         |
                Residual |  381.66667         18   21.203704  
              -----------+----------------------------------------------------
                   Total |  1836.6667         29   63.333333  

. 
end of do-file


	</code>
</pre>

####Step 6

Perform PostHoc test

<pre>
	<code>
pwcompare cond, mcompare(tukey) effects

Pairwise comparisons of marginal linear predictions

Margins      : asbalanced

---------------------------
             |    Number of
             |  Comparisons
-------------+-------------
        cond |            3
---------------------------

------------------------------------------------------------------------------
             |                              Tukey                Tukey
             |   Contrast   Std. Err.      t    P>|t|     [95% Conf. Interval]
-------------+----------------------------------------------------------------
        cond |
 MOD vs NOT  |        7.5   2.059306     3.64   0.005     2.244315    12.75568
 EXT vs NOT  |       15.5   2.059306     7.53   0.000     10.24432    20.75568
 EXT vs MOD  |          8   2.059306     3.88   0.003     2.744315    13.25568
------------------------------------------------------------------------------

. 
end of do-file

. 
	</code>
</pre>