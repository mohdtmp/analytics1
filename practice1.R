#factors
(gender=sample(c('m','f'),size=20,replace=T))
summary(gender)

genderF=factor(gender)
summary(genderF)
genderF
(likscale=sample(c('ex','good','sat','poor'),size=20,replace=T))
likscaleF=factor(likscale)
summary(likscaleF)
class(likscaleF)
likscaleOF=factor(likscale,ordered=T,levels = c('poor','sat','good','ex'))
summary(likscaleOF)
barplot(table(likscaleF),col=1:4)
barplot(table(likscaleOF),col=1:4)
