#DataFrame----
#create Vectors to be combined into DF
(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks = floor(rnorm(30,mean= 50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA','Btech'), size=30, replace=T, prob=c(.5,.2,.3)))
rollno; sname; gender
marks ; marks2; course

#create DF
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
str(df1) #structure of DF
head(df1) #top 6 rows
head(df1,n=3) #top 3 rows
tail(df1) #last 6 rows
class(df1) # DF
summary(df1) #summary
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)


df1  #full data
df1$gender  # one column
df1[ , c(2,4)] #multiple columns
df1[1:10 ,] #select rows, all columns
#as per conditionis
df1[ marks > 50 & gender=='F', c('rollno', 'sname','gender', 'marks')]
df1[ marks > 50 & gender=='F', c(1,2)]
df1[ marks > 50 | gender=='F', ]

names(df1)  # names of columns
dim(df1)  #Dimensions

aggregate(df1$marks, by=list(df1$gender), FUN=max)
aggregate(marks ~ gender, data=df1, FUN=max)


(df2 = aggregate(cbind(marks,marks2) ~ gender + course, data=df1, FUN=mean))



