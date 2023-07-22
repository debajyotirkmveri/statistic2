Control<-c(1042,1617,1180,973,1552,1251,1151,1511,728,1079,951,1319)
Case <-c(874,389,612,798,1152,893,541,741,1064,862,213)
wilcox.test(Control,Case,alternative ="two.sided",pvalue = 0.05)
#Here we see that both groups of participants perform both the condition of the study so the groups are independent to each other
#Here the distribution of the data is not given so we are not apply "t.test" so the datas follows non parametric distribution
#so we apply Mann-Whitney sign rank test
#> Control<-c(1042,1617,1180,973,1552,1251,1151,1511,728,1079,951,1319)
#> Case <-c(874,389,612,798,1152,893,541,741,1064,862,213)
#> wilcox.test(Control,Case,alternative ="two.sided",pvalue = 0.05)

#Wilcoxon rank sum exact test

#data:  Control and Case
#W = 117, p-value = 0.0009807
#alternative hypothesis: true location shift is not equal to 0



#create matrix
m <- matrix(c(40,33,3,12),byrow = TRUE,ncol = 2)
m
#gives the matrix row name
row.names(m) <-c("Drinks tea","Does not drink tea")
#gives the matrix columns name
colnames(m)<-c("Smoker","Non-smoker")
#print the matrix
m
#calculate the coefficient of measure of association
y = (m[1,1] * m[2,2] - m[1,2]*m[2,1])/(m[1,1] * m[2,2] + m[1,2]*m[2,1])
y
cat("Yule's Q value is :",y,"\n")
