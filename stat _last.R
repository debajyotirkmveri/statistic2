rnorm(5)
rnorm(5)
plot(density(rnorm(50)))
plot(density(rnorm(500000)))
y <-rnorm(50,2,3)
y
qqnorm(rnorm(y))
qqline(rnorm(y))
shapiro.test(rnorm(50))
n<-5
mu<-5
sigma<-3

samples<-replicate(rnorm(n, mu, sigma),n=100)
samples

sample_means<-apply(samples,2, mean)
sample_means

sample_var<-apply(samples,2,function(x) {return((1/n)*sum(x^2)-sum(x/n)^2)})
sample_var

# check if estimates are close:
mean(sample_means);
mean(sample_var)
