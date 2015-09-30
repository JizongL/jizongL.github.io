---
layout: post
comments: True
title: Interaction effect of multiple ANOVA
category: Statistics
tags: [ANOVA, blocking, Randomized complete blocked design, stata]
---


### Step 1

Import the dataset 

<!--break-->

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

Change variable names to lower case for easy data management

<pre>
	<code>
rename Gender gender
rename Alcohol alcohol
rename Attractiveness attract
	</code>
</pre>	

### Step 3

Basic exploratory data analysis

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

<pre>
	<code>

	</code>
</pre>			
