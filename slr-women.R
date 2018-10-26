#simple linear regression-women
women
fit1 = lm(weight ~ height, data=women)  # creating a model
summary(fit1)
#predict for ht 69 and 70
(new=data.frame(height=c(69,70)))
(p1=predict(fit1,newdata = new))
cbind(new,p1)