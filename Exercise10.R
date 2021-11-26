### Biocomputing -- Exercise 10
### Ashton Bieri | github @ashtonbieri

library(ggplot2)
## Problem 1: takes data from [dataset] text file, produces scatter plot of two variables w/ trend line
fern<-read.table(file="fern.txt",header=TRUE,sep=',')
a<-ggplot(fern,aes(x=stalk_height,y=leaf_length))
a+geom_point()+stat_smooth(method="lm")

## Problem 2: takes data.txt, generates 2 figures that summarize the data
data<-read.table(file="data.txt",header=TRUE,sep=',')
#bar plot

b<-ggplot(data,aes(x=region,y=observations))
b+stat_summary(fun=mean, geom="bar")

#scatter plot
b+geom_jitter()
