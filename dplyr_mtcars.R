#analysis of datasets using dplyr
#file name dplyr_mtcars.R
library(dplyr)
?mtcars
#structure of a data set
str(mtcars) #structure
dim(mtcars) #dimensions
names(mtcars) ; colnames(mtcars) #column names
rownames(mtcars) #rownames
summary(mtcars) #summary of dataset

#summary activity on mtcars
t1=table(mtcars$am)
pie(t1)
19/32*360
pie(t1,labels=c('auto','manual'))
t2=table(mtcars$gear)
t2
pie(t2)
barplot(t2)
barplot(t2,col=1:3)
barplot(t2,col=c('red','blue','yellow'),xlab='gear',ylab='no of cars',ylim=c(0,20))
title(main='distribution of gears of cars',sub='number of gears')
pie(t2,labels=c('3gear','4gear','5gear'))
#using dplyr %>% is chaining function
mtcars %>% select(mpg) %>% slice(c(1:5,10)) #slice is for rows, select is for columns
mtcars %>% select(mpg,gear) %>% slice(c(1:5,10))
mtcars %>% arrange(mpg) #ascending order of mileage
mtcars %>% arrange(am,desc(mpg)) %>% select(am,mpg) #ascending order of am, descending order of mpg
mtcars %>% mutate(rn=rownames(mtcars)) %>% select(rn,mpg) #display row names with mpg
mtcars %>% slice(c(1,5,7))
mtcars %>% sample_n(3)
mtcars %>% sample_frac(.5)
mtcars %>% select(sample(x=c(1:11),size=2)) %>% head
sample(x=1:11,size=10)
mtcars %>% mutate(newmpg=mpg*1.1)
mutate(mtcars, newmpg=mpg*1.2)
#type of tx, mean(mgp)
mtcars %>% group_by(am) %>% summarise(Meanmpg=mean(mpg))
mtcars %>% group_by(am) %>% summarise(Meanmpg=mean(mpg),MaxHp=max(hp),MinWt=min(wt))

