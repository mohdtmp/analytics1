#create vector of student names :divide into 2 groups
studentname=paste('student',1:10000,sep="-")
xy=studentname
length(xy)
group1=60%
group2=40%
firstset <- sample(studentname, size=4)
secondset <- sample(studentname, size=6)
firstset
secondset
x=1:10
#(index=sample(studentname,size = .6*length(studentname)))
#(index=sample(x=length(xy),size = .6*length(studentname)))
(index=sample(length(studentname),size = .6*length(studentname)))
train1=studentname[index]
test1=studentname[-index]
train1
test1
#create a large DF
sname=paste('s',1:1000,sep='-')
gender=sample(x=c('male','female'),size=1000,prob = c(.6,.4),replace = T)
marks=ceiling(rnorm(1000,60,10))
marks
sname
gender
df=data.frame(sname,gender,marks)
head(df)
df
table(df$gender)
length(df);nrow(df)
#split into 2 70% & 30%
index2=sample(x=nrow(df),size=.7*nrow(df))
train=df[index2,]
test=df[-index2,]
train
test
 #using caret
library(caret)
table(df$gender) ; prop.table(table(df$gender))
index3=createDataPartition(y=df$gender,p=0.7,list=F)
length(index3)
(train3=df[index3,])
(test3=df[-index3,])
(t3a=table(train3$gender)); prop.table(t3a)
(t3b=table(test3$gender)); prop.table(t3b)
