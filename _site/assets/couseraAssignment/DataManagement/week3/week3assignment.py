__author__ = 'liangjizong22'

# import the entire dataset to memory
import pandas
import numpy

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




print('create sub2 dataset to include only variables of interest.')
sub2 = data[['alcconsumption','lifeexpectancy','relectricperperson','urbanrate', 'internetuserate','hivrate']]

print('preview dataset')
print(sub2.head(n=10))

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

print('crosstable function for count of oberservation within each category')
print(pandas.crosstab(sub2["urbanrateNew"], sub2["urbanrate"]))


print(pandas.crosstab(sub2["urbanrateNew2"], sub2["urbanrate"]))