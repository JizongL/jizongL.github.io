
# coding: utf-8

# ## Assignment 4:  Creating graphs for your data
# ### author: Jizong Liang Date: 10/11/2015

# ### import the libraries and the entire dataset to memory

# In[ ]:

get_ipython().magic('matplotlib inline')


# In[ ]:

import pandas
import numpy as np
import seaborn as sn
import matplotlib.pyplot as plt


# ### some house keeping
# 
# * Import the dataset
# * convert all variable names to lowercaes
# * set avoid run time error message
# 

# In[ ]:

print("Import the entire dataset to memory")
data = pandas.read_csv("gapminder.csv", low_memory = False)

print("upper case all DataFrame column names")
data.columns = map(str.lower, data.columns)

print("avoid run time error message")
pandas.set_option('display.float_format', lambda x:'%f'%x)


# ### convert string to numerics and set missing values to "nan"

# In[ ]:

print("convert strings to numerics")
data['incomeperperson'] = data['incomeperperson'].convert_objects(convert_numeric=True)
data['lifeexpectancy'] = data['lifeexpectancy'].convert_objects(convert_numeric=True)
data['alcconsumption'] = data['alcconsumption'].convert_objects(convert_numeric=True)
data['relectricperperson'] = data['relectricperperson'].convert_objects(convert_numeric=True)
data['urbanrate'] = data['urbanrate'].convert_objects(convert_numeric=True)
data['internetuserate'] = data['internetuserate'].convert_objects(convert_numeric=True)
data['hivrate'] = data['hivrate'].convert_objects(convert_numeric=True)

print("Set mission data to NAN")
data['incomeperperson'] = data['incomeperperson'].replace(0, numpy.nan)
data['alcconsumption'] = data['alcconsumption'].replace(0, numpy.nan)
data["lifeexpectancy"] = data["lifeexpectancy"].replace(0, numpy.nan)
data["relectricperperson"] = data["relectricperperson"].replace(0, numpy.nan)
data['urbanrate'] = data['urbanrate'].replace(0, numpy.nan)
data["internetuserate"] = data["internetuserate"].replace(0, numpy.nan)
data['hivrate'] = data['hivrate'].replace(0, numpy.nan)


# ### Create a subset of the dataset and name it as sub2 and preview the subset

# In[ ]:

print('create sub2 dataset to include only variables of interest.')
sub2 = data[['alcconsumption','lifeexpectancy','relectricperperson','urbanrate', 'internetuserate','hivrate','incomeperperson']]
print('preview dataset')
print(sub2.head(n=10))


# ### create a new varible Income Categories
# 
# 
# | income category | income(dollars) |
# |:---:|:---:|
# | Low income  | 1,035 or less 
# | Lower middle | 1,036 to 4,085  
# |Upper middle | 4,086 to 12,615
# |High income | 12,616 or more 
# 
# The categories table above is based on the worldbank official website, see [source](http://data.worldbank.org/news/new-country-classifications)

# #### Note: ignore the error message below

# In[65]:

def INCOMECATAGO(row):
    if row['incomeperperson'] <= 1035:
        return 1
    elif 1035 < row['incomeperperson']  <= 4085:
        return 2
    elif 4085 < row['incomeperperson'] <= 12615:
        return 3
    else:
        return 4

sub2['INCOMECATAGO'] = sub2.apply(lambda row: INCOMECATAGO(row), axis=1)

sub2['INCOMECATAGO'] = sub2['INCOMECATAGO'].astype('category')

sub2['INCOMECATAGO'] = sub2['INCOMECATAGO'].cat.rename_categories(['low','lower middle', 'upper middle','high'])


# ### preview the entire dataset

# In[66]:

print(sub2.head(n=10))


# ### Make a categorical count plot for the different income groups. 

# In[48]:

sn.countplot(x='INCOMECATAGO', data = sub2, palette = 'Greens_d')
plt.xlabel("Income Category")
plt.ylabel("count")
plt.show(block=True)


# ### Generate more predictors
# 
# Use the same technique to generate new varibles in the same 2 levels categorical format. It includes HIV rate, Life expectancy, Urban rate. 
# 
# |predictor | level 1 | level 2
# |:---:|:---:|:---:|
# |HIV rate |normal | generalized epidemic 
# |Life expectancy | < 70 year old | =>70 year old 
# | Urban rate | < 50%| => 50% |
# 
# For the HIV rate predictor, see the following detail
# 
# There is either a generalised or concentrated epidemic. In a generalised epidemic, HIV prevalence is 1% or more in the general population. In a concentrated or low level epidemics, HIV prevalence is below 1% in the general population but exceeds 5% in specific at-risk populations like injecting drug users or sex workers, or HIV prevalence is not recorded at a significant level in any group). 
# 
# see [source](http://www.who.int/hiv/topics/surveillance/2ndgen/en/) from WHO website. 
# 
# **note** ignore the error messages from the outcome

# In[49]:

## setting HIV predictor
def HIVPrev(row):
    if row['hivrate'] > 1:
        return 1
    else:
        return 0

sub2['HIVPrev'] = sub2.apply(lambda row: HIVPrev(row), axis=1)

## setting life expectancy predictor
def LIFEexp(row):
    if row['lifeexpectancy'] > 70:
        return 1
    else:
        return 0

sub2['LIFEexp'] = sub2.apply(lambda row: LIFEexp(row), axis=1)

## setting urban rate predictor
def URBAN(row):
    if row['urbanrate'] > 50:
        return 1
    else:
        return 0

sub2['URBAN'] = sub2.apply(lambda row: URBAN(row), axis=1)


# ### examine the newly created varibles 

# In[50]:

print(sub2.head(n=5))


# ### categorical plot study

# ### Income/Person v.s HIV prevalence
# from the plot, it indicates that the higher the Income/Person the less HIV rate. 

# In[51]:

# bivariate bar graph C->C income person vs HIV
sn.factorplot(x='INCOMECATAGO',y="HIVPrev",data=sub2,kind='bar',ci=None)
plt.xlabel('Income per person categories')
plt.ylabel('HIV prevalence')
plt.show()


# ### Income/Person v.s life expectancy
# 
# from the plot, it indicates that the longest left expectancy is located in the countries belonged to the upper middle class income level. Which seems to make sense. 

# In[52]:

# bivariate bar graph C->C income person vs life expectancy
sn.factorplot(x='INCOMECATAGO',y="LIFEexp",data=sub2,kind='bar',ci=None)
plt.xlabel('Income per person categories')
plt.ylabel('life expectancy')
plt.show


# ### Income/Person v.s Urban rate
# 
# The plot indicates that the highest urban rate is located in the countries belonged to the upper middle class level. 

# In[53]:

# bivariate bar graph C->C income person vs urbanrate
sn.factorplot(x='INCOMECATAGO',y="URBAN",data=sub2,kind='bar',ci=None)
plt.xlabel('Income per person categories')
plt.ylabel('urbanrate')
plt.show()


# ## quantitative variables graphing study

# ### Describe each of the quantitative variables

# In[54]:

desc1 = sub2['incomeperperson'].describe()
print(desc1)
desc2 = sub2['alcconsumption'].describe()
print(desc2)
desc3 = sub2['lifeexpectancy'].describe()
print(desc3)
desc4 = sub2['relectricperperson'].describe()
print(desc4)
desc5 = sub2['urbanrate'].describe()
print(desc5)
desc6 = sub2['internetuserate'].describe()
print(desc6)
desc7 = sub2['hivrate'].describe()
print(desc7)


# From the description above, we can see that the variable "income/person" has a large variability, because it has a very large standard variation(sd = 14262.81)

# ### Quantitative plot study

# ### urban rate v.s internet users rate
# 
# The plot indicates that the two variables have a positive correlated relationship. 

# In[55]:

scat1 = sn.regplot(x='urbanrate',y='internetuserate', fit_reg=True, data=sub2)
plt.xlabel('Urban Rate')
plt.ylabel('Internet Use Rate')
plt.title("Scatterplot for the Association Between Urban Rate and Internet Use Rate")
plt.show()


# ### urban rate v.s income/person
# 
# The plot indicates that the two variables have a positive correlated relationship, although the correlation might not be very high based on the slope of the fittin line. 

# In[56]:

scat2 = sn.regplot(x='urbanrate',y='alcconsumption', fit_reg=True, data=sub2)
plt.xlabel('Urban Rate')
plt.ylabel('Alcohol Consumption')
plt.title("Scatterplot for the Association Between Urban Rate and Alcohol consumption")
plt.show()


# ### Scatterplot for the Association Between Income/Person and HIV rate

# In[57]:

scat3 = sn.regplot(x='incomeperperson',y='hivrate', fit_reg=True, data=sub2)
plt.xlabel('Income/Person')
plt.ylabel('HIV rate')
plt.title("Scatterplot for the Association Between Income/Person and HIV rate")
plt.show()


# #### Making a categorical plot by converting a quantitive variable into a categorical variable
# 
# From the plot, we see that the scatter plot does not do a good job illustrating the two variables, so we create another plot by binning the income/person variable into 4 percentile groups. And bin the HIV rate varible into 2 groups, generalized epidemic and normal.  
# 
# And according to the WHO, There is either a generalised or concentrated epidemic. In a generalised epidemic, HIV prevalence is 1% or more in the general population. In a concentrated or low level epidemics, HIV prevalence is below 1% in the general population but exceeds 5% in specific at-risk populations like injecting drug users or sex workers, or HIV prevalence is not recorded at a significant level in any group). 
# 
# see [source](http://www.who.int/hiv/topics/surveillance/2ndgen/en/) from WHO website. 
# 
# 

# In[62]:

print('Income per person - 4 categories - quartiles')
sub2['INCOMEGRP4'] = pandas.qcut(sub2.incomeperperson, 4, labels=["1=25th%tile","2=50%tile","3=75%tile","4=100%tile"])
c10 = sub2['INCOMEGRP4'].value_counts(sort=False,dropna=True)
print(c10)


# #### Use the two newly created categorical varibles, income/person and HIV prevalence to plot a bar chart. 
# It indicates that lower income countries has higher HIV prevalance thus it indicates HIV epidemic in those countries. 

# In[67]:

sn.factorplot(x='INCOMEGRP4',y = 'HIVPrev', data=sub2, kind = 'bar', ci=None)
plt.xlabel('income groups')
plt.ylabel('mean HIV rate')
plt.show()


# ### scatter plot for Income/person and Alcohol Consumption
# 
# The plot does not indicate a very well correlated relationship between the varibles. 

# In[58]:

scat4 = sn.regplot(x='incomeperperson',y='alcconsumption', fit_reg=True, data=sub2)
plt.xlabel('Income/Person')
plt.ylabel('Alchohol consumption')
plt.title("Scatterplot for the Association Between Income/Person and Alcohol consumption")
plt.show()


# ### scatter plot for life expectancy and alcohol consumption
# 
# The plot indiates a positive correlated relationship between the two vairbles, but it has a lot of varibility. 

# In[59]:

scat5 = sn.regplot(x='lifeexpectancy',y='alcconsumption', fit_reg=True, data=sub2)
plt.xlabel('Life expectancy')
plt.ylabel('Alchohol consumption')
plt.title("Scatterplot for the Association Between life expectancy and Alcohol consumption")
plt.show()


# All the analysis above is only basic data exploratory, and further study has to be performed as I learn more and more about Python. 
