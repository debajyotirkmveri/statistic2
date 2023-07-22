# R program to illustrate
# one-sample Wilcoxon signed-rank test
#name = paste0(rep("R_", 10), 1:10)
# The data set
set.seed(1234)
myData = data.frame(
  name = paste0(rep("R_", 10), 1:10),
  weight = round(rnorm(10, 30, 2), 1)
)
d = paste0(rep("R_", 10), 1:10)
d
#r = rnorm(10, 30, 2)
#r
#sum(r)
# Print the data
print(myData)

# One-sample wilcoxon test
result = wilcox.test(myData$weight, mu = 25)

# Printing the results
print(result)
# R program to illustrate
# one-sample Wilcoxon signed-rank test

# The data set
set.seed(1234)

myData = data.frame(
  name = paste0(rep("R_", 10), 1:10),
  weight = round(rnorm(10, 30, 2), 1)
)

# One-sample wilcoxon test
wilcox.test(myData$weight, mu = 25,
            alternative = "less")

# Printing the results
print(result)
# R program to illustrate
# one-sample Wilcoxon sign-rank test

# The data set
set.seed(1234)
myData = data.frame(
  name = paste0(rep("R_", 10), 1:10),
  weight = round(rnorm(10, 30, 2), 1)
)

# One-sample wilcoxon test
wilcox.test(myData$weight, mu = 25,
            alternative = "greater")

# Printing the results
print(result)

# R program to illustrate
# Paired Samples Wilcoxon Test

# The data set
# Weight of the rabbit before treatment
before <-c(190.1, 190.9, 172.7, 213, 231.4,
           196.9, 172.2, 285.5, 225.2, 113.7)

# Weight of the rabbit after treatment
after <-c(392.9, 313.2, 345.1, 393, 434,
          227.9, 422, 383.9, 392.3, 352.2)

# Create a data frame
myData <- data.frame(
  group = rep(c("before", "after"), each = 10),
  weight = c(before, after)
)
# Print all data
print(myData)

# Paired Samples Wilcoxon Test
result = wilcox.test(before, after, paired = TRUE)

# Printing the results
print(result)
# R program to illustrate
# Paired Samples Wilcoxon Test

# The data set
# Weight of the rabbit before treatment
before <-c(190.1, 190.9, 172.7, 213, 231.4,
           196.9, 172.2, 285.5, 225.2, 113.7)

# Weight of the rabbit after treatment
after <-c(392.9, 313.2, 345.1, 393, 434,
          227.9, 422, 383.9, 392.3, 352.2)

# Create a data frame
myData <- data.frame(
  group = rep(c("before", "after"), each = 10),
  weight = c(before, after)
)

# Paired Samples Wilcoxon Test
result = wilcox.test(weight ~ group,
                     data = myData,
                     paired = TRUE,
                     alternative = "less")

# Printing the results
print(result)
boxplot(Ozone ~ Month, data = airquality)
wilcox.test(Ozone ~ Month, data = airquality,
            subset = Month %in% c(5, 8))
