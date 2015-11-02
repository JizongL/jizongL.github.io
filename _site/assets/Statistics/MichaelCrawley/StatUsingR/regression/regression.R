regression <- read.table("http://www.bio.ic.ac.uk/research/mjcraw/therbook/data/regression.txt", 
                      sep = "\t", header = TRUE)
attach(regression)
x = tannin;y = growth;n = length(tannin)
resid_plot=plot(x,y)
m=mean(growth)
abline( h = m, lwd = 1)
for (i in 1:n) 
        lines(c(x[i],x[i]),c(m,y[i]))

predict_plot = plot(x,y,main = "regression")
fit = lm(y~x)
abline(fit)
p = predict(fit)
for (i in 1:n) 
        lines(c(x[i],x[i]),c(p[i],y[i]))
                     

