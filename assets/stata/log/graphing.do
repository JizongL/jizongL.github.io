** import the data Nations2.dta

use https://dl.dropboxusercontent.com/u/49272502/stata%20blog/Nations2.dta, clear

** explore the data 

describe

** simple histogram
histogram adfert, percent

** histogram with more details
histogram adfert, frequency start(0) width(10) xlabel(0(20)200) xtick(10(20)210)
ylabel(0(5)35, grid gmax)
title("Adolescent fertility rate in 194 nations")

** histogram by regions

histogram adfert, percent start(0) width(10) by(region, total)

** simple boxplot
graph box adfert

** boxplot with labelled outlier
graph box adfert, marker(1, mlabel(country)) ytitle("Births per 1,000 females 15-19")

** multiple boxplot
graph box adfert, marker(1, mlabel(country)) yline(39.3) over(region)

** horizontal multiple boxplot
graph hbox co2, over(region)
note("note: {bf:Statistics with Stata}, version 12") ///
caption("caption: United Nations Human Development Report 2011") ///
title("title: {it:Example of horizontal box plots}") ytitle("ytitle: Tons of CO{subscript:2} emitted per capita")

** simple scatter plot
graph twoway scatter life school

** scatter plot with weight feature
graph twoway scatter life school [fweight=pop], msymbol(Oh)

** scatter plot with regression line overlaid
twoway (scatter life school, msymbol(Oh))(lfit life school, lwidth(medthick))

** scatter plot with label and tick mark.

twoway (scatter life school, msymbol(Oh))(lfit life school, ///
lwidth(medthick)ylabel(45(5)85) xlabel(2(2)12) xtick(1(2)13) ///
legend(col(1) ring(0) position(11)))

** scatter plot with confident internval
twoway (lfitci life school, stdp)(scatter life school, msymbol(Th))///
(scatter life school if school > 8 & life < 55, msymbol(S) mlabel(country)///
legend(col(1) ring(0) position(11) label(3 "Life expectancy")order(3 2 1)))

** scatter matrix
graph matrix gdp school adfert chldmort life, half msymbol(oh)


