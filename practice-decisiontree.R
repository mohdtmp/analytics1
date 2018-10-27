library(rpart)
library(rpart.plot)
gender=sample(c('m','f'),size = 1000,prob = c(.6,.4),replace = T)
age=ceiling(rnorm(1000,35,5))
buy=sample(c('yes','no'),size = 1000,prob = c(.5,.5),replace = T)
df=data.frame(buy,age,gender)
head(df)
dtree2=rpart (buy~gender+age,data=df)
dtree3=rpart (buy~gender+age,data=df,minsplit=10,minbucket=4, cp=-1)
dtree1=rpart (buy~gender+age,data=df,minsplit=10,minbucket=4, cp=0.005) #cp=complex parameter 
dtree1
dtree1$variable.importance
rpart.plot(dtree1)
rpart.plot(dtree1, cex = .8,nn=T) #cex=magnification nn=node name
rpart.plot(dtree2)
rpart.plot(dtree3)
