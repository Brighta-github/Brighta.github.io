install.packages('stats')
install.packages('dplyr')
install.packages('ggplot2')
install.packages('ggfortify')
install.packages('readxl')
library('stats')
library('dplyr')
library('ggplot2')
library('ggfortify')
library('readxl')
data<-read_xlsx("C:\\R\\t1.xlsx",sheet = 1)
data
mydata=select(data,c(3,4,5))
mydata
#calculate no of cluster
wss<-numeric(30)
for(k in 1:30) wss[k]<-sum(kmeans(mydata,centers = k,nstart=25)$withinss)
plot(1:30,wss,type="b",xlab="Number of clusters",ylab="within groups sum of squares")

km=kmeans(mydata,4)
autoplot(km,mydata,frame=TRUE)
km$centers

