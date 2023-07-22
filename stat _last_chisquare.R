Obs<-c(120,48,36,13)
sum(Obs)
mice_breed<-chisq.test(Obs, p = c(9/16, 3/16, 3/16, 1/16))
mice_breed
mice_breed$expected
217*(9/16)
tulip <- c(81, 50, 27)
res <- chisq.test(tulip, p = c(1/3, 1/3, 1/3))
res
res$expected
res <- chisq.test(tulip, p = c(1/2, 1/3, 1/6)) 
res
res$expected
