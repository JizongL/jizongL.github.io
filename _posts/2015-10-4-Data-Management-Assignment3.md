---
layout: post
comments: True
title: Assignment 3 Data Management and EDA
category: Data Science
tags: [data management, data, assignment,EDA]
---




## Instructions

This week, you will be making and implementing decisions about data management for the variables that you 
<!--break-->have chosen to examine based on the steps reviewed in the videos and supplemental materials. This assignment is important because it offers you the opportunity to practice making sound data management decisions and think about how these decisions will impact your research. 


You can download my python code file [here](/assets/couseraAssignment/DataManagement/week3/week3assignment.py)

And you can download the gapminder dataset [csv file here](/assets/couseraAssignment/DataManagement/week3/gapminder.csv)

And you can review my Assignment for the codebook [here](http://jizongl.github.io/data%20science/2015/09/19/Data-Management-Assignment1/)

* This line is a placeholder to generate the table of contents
{:toc}

### import the entire dataset to memory
<pre>
pre<code>
import pandas
import numpy
</code>
</pre>

### some house keeping to the dataset

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
<code>	
print("Import the entire dataset to memory")
data = pandas.read_csv("gapminder.csv", low_memory = False)

print("upper case all DataFrame column names")
data.columns = map(str.lower, data.columns)

print("avoid run time error message")
pandas.set_option('display.float_format', lambda x:'%f'%x)

print("convert strings to numerics")
data['alcconsumption'] = data['alcconsumption'].convert_objects(convert_numeric=True)
data['alcconsumption'] = data['alcconsumption'].convert_objects(convert_numeric=True)
data['relectricperperson'] = data['relectricperperson'].convert_objects(convert_numeric=True)
data['urbanrate'] = data['urbanrate'].convert_objects(convert_numeric=True)
data['internetuserate'] = data['internetuserate'].convert_objects(convert_numeric=True)
data['hivrate'] = data['hivrate'].convert_objects(convert_numeric=True)

print("Set mission data to NAN")
data['alcconsumption'] = data['alcconsumption'].replace(0, numpy.nan)
data["lifeexpectancy"] = data["lifeexpectancy"].replace(0, numpy.nan)
data["relectricperperson"] = data["relectricperperson"].replace(0, numpy.nan)
data['urbanrate'] = data['urbanrate'].replace(0, numpy.nan)
data["internetuserate"] = data["internetuserate"].replace(0, numpy.nan)
data['hivrate'] = data['hivrate'].replace(0, numpy.nan)
</code>
</pre>
</div>


<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
<code>	
print('create sub2 dataset to include only variables of interest.')
sub2 = data[['alcconsumption','lifeexpectancy','relectricperperson','urbanrate', 'internetuserate','hivrate']]

print('preview dataset')
print(sub2.head(n=10))

   alcconsumption lifeexpectancy  relectricperperson  urbanrate  \
0        0.030000         48.673                 nan  24.040000   
1        7.290000         76.918          636.341383  46.720000   
2        0.690000         73.131          590.509814  65.220000   
3       10.170000                                nan  88.920000   
4        5.570000         51.093          172.999227  56.700000   
5        8.170000                                nan  30.460000   
6        9.350000         75.901          768.428300  92.000000   
7       13.660000         74.241          603.763058  63.860000   
8             nan         75.246                 nan  46.780000   
9       10.210000         81.907         2825.391095  88.740000   

   internetuserate  hivrate  
0         3.654122      nan  
1        44.989947      nan  
2        12.500073 0.100000  
3        81.000000      nan  
4         9.999954 2.000000  
5        80.645455      nan  
6        36.000335 0.500000  
7        44.001025 0.100000  
8        41.800889      nan  
9        75.895654 0.100000  
</code>
</pre>
</div>

### I am interested to divided urbanrate into 4 percentiles, so I coded with both methods introduced from the video as follow

<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
<code>	
print('create new variable urbanrateNew2 to cut urbanrate into 4 percentile')
sub2['urbanrateNew']= pandas.qcut(sub2.urbanrate, 4, labels = ["1=25%tile","2=50%tile", "3=75%tile", "4=100%tile"])
print('create new variable urbanrateNew2 to cut urbanrate into 4 categories')
sub2["urbanrateNew2"] = pandas.cut(sub2.urbanrate,[10,40,70,100])

print('frequency count for method 1')
c1 = sub2["urbanrateNew"].value_counts(sort=False,dropna=True)
print(c1)
print("percentage count for method 1")
p1 = sub2["urbanrateNew"].value_counts(sort=False, normalize=True)
print(p1)

print('frequency count for method 2')
c2 = sub2["urbanrateNew2"].value_counts(sort=False,dropna=True)
print(c2)
print("percentage count for method 2")
p2 = sub2["urbanrateNew2"].value_counts(sort=False, normalize=True)
print(p2)
</code>
</pre>
</div>

### result
<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
<code>	
frequency count for method 2
1=25%tile     51
2=50%tile     51
3=75%tile     50
4=100%tile    51
dtype: int64
percentage count for method 1
1=25%tile    0.239437
2=50%tile    0.239437
3=75%tile    0.234742
4=100%tile   0.239437
dtype: float64
frequency count for method 2
(10, 40]     59
(40, 70]     80
(70, 100]    64
dtype: int64
percentage count for method 2
(10, 40]    0.276995
(40, 70]    0.375587
(70, 100]   0.300469
dtype: float64
</code>
</pre>
</div>

### Use **crosstab()** function to make cross counts for both newly created variables (urbanrateNew & urbanrateNew2) and the original variable urbanrate. 

<pre>
<code>	
print('crosstable function for count of oberservation within each category')
print(pandas.crosstab(sub2["urbanrateNew"], sub2["urbanrate"]))
print(pandas.crosstab(sub2["urbanrateNew2"], sub2["urbanrate"]))

</code>
</pre>

### result of crosstable count for both methods
<div style="width:700px;height:500px;line-height:3em;overflow:auto;padding:5px;">
<pre>
<code>	
crosstable function for count of oberservation within each category
urbanrate     10.400000   12.540000   12.980000   13.220000   14.320000   \
urbanrateNew                                                               
1=25%tile              1           1           1           1           1   
2=50%tile              0           0           0           0           0   
3=75%tile              0           0           0           0           0   
4=100%tile             0           0           0           0           0   

urbanrate     15.100000   16.540000   17.000000   17.240000   17.960000   \
urbanrateNew                                                               
1=25%tile              1           1           1           1           1   
2=50%tile              0           0           0           0           0   
3=75%tile              0           0           0           0           0   
4=100%tile             0           0           0           0           0   

urbanrate        ...      92.680000   93.160000   93.320000   94.220000   \
urbanrateNew     ...                                                       
1=25%tile        ...               0           0           0           0   
2=50%tile        ...               0           0           0           0   
3=75%tile        ...               0           0           0           0   
4=100%tile       ...               1           1           1           1   

urbanrate     94.260000   95.640000   97.360000   98.320000   98.360000   \
urbanrateNew                                                               
1=25%tile              0           0           0           0           0   
2=50%tile              0           0           0           0           0   
3=75%tile              0           0           0           0           0   
4=100%tile             1           1           1           1           1   

urbanrate     100.000000  
urbanrateNew              
1=25%tile              0  
2=50%tile              0  
3=75%tile              0  
4=100%tile             6  

[4 rows x 194 columns]
urbanrate      10.400000   12.540000   12.980000   13.220000   14.320000   \
urbanrateNew2                                                               
(10, 40]                1           1           1           1           1   
(40, 70]                0           0           0           0           0   
(70, 100]               0           0           0           0           0   

urbanrate      15.100000   16.540000   17.000000   17.240000   17.960000   \
urbanrateNew2                                                               
(10, 40]                1           1           1           1           1   
(40, 70]                0           0           0           0           0   
(70, 100]               0           0           0           0           0   

urbanrate         ...      92.680000   93.160000   93.320000   94.220000   \
urbanrateNew2     ...                                                       
(10, 40]          ...               0           0           0           0   
(40, 70]          ...               0           0           0           0   
(70, 100]         ...               1           1           1           1   

urbanrate      94.260000   95.640000   97.360000   98.320000   98.360000   \
urbanrateNew2                                                               
(10, 40]                0           0           0           0           0   
(40, 70]                0           0           0           0           0   
(70, 100]               1           1           1           1           1   

urbanrate      100.000000  
urbanrateNew2              
(10, 40]                0  
(40, 70]                0  
(70, 100]               6  

[3 rows x 194 columns]

Process finished with exit code 0


</code>
</pre>
</div>

### Review Criteria

Your assessment will be based on the evidence you provide that you have completed all of the steps. When relevant, gradients in the scoring will be available to reward clarity (for example, you will get one point for submitting output that is not understandable, but two points if it is understandable). In all cases, consider that the peer assessing your work is likely not an expert in the field you are analyzing. You will be assessed equally on your description of your frequency distributions.

Specific rubric items, and their point values, are as follows:

    Was the program output interpretable (i.e. organized and labeled)? (1 point)
    Does the program output display three data managed variables as frequency tables? (1 point)
    Did the summary describe the frequency distributions in terms of the values the variables take, how often they take them, the presence of missing data, etc.? (2 points)
