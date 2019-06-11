attach(faithful)
summary(eruptions)
fivenum(eruptions)
stem(eruptions)
hist(eruptions)

#make the bins smaller in the histogram
hist(eruptions, seq(1.6, 5.2, .2), prob=TRUE)
#adding density lines to the histogram
lines(density(eruptions, bw="SJ"))
#Plotting the empirical cumulative distribution function by using the function ecdf.

plot(ecdf(eruptions), do.points=FALSE, verticals=TRUE)

#now we analyze for eruptions greater than 3 minutes.
long<- eruptions[eruptions>3]
plot(ecdf(long), do.points=FALSE, verticals=TRUE)
x<-seq(3, 5.4, .01)
lines(x, pnorm(x, mean=mean(long), sd=sqrt(var(long))), lty=3)

#quantile-quantile plot
par(pty="s")
qqnorm(long)
qqline(long)

#comparison with some simulated data from a t distribution
x<- rt(250, df=5)
qqnorm(x)
qqline(x)

#creating a qqplot against the generated distribution
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dn")
qqline(x)

#Shapiro-Wilks Test
shapiro.test(long)

#one-sample Kolmogorov-Smirnov test
ks.test(long, "pnorm", mean=mean(long), sd = sqrt(var(long)))

#One sample and two sample tests
#boxplots and t test

A<- c(1,2,3,4,2,4,3,4,2,2)
B<- c(9,2,1,5,3,2,2,2,1,2)

boxplot(A,B)
t.test(A,B)
#test for homogeneity of variance
var.test(A,B)
t.test(A,B, var.equal=TRUE)
#wilcoxon test
wilcox.test(A,B)

#creating empirical cumulative distribution functions
plot(ecdf(A), do.points=FALSE, verticals=TRUE, xlim=range(A,B))
plot(ecdf(B), do.points=FALSE, verticals=TRUE, add=TRUE)
#Two sample Kolmogorov-Smirnov test
ks.test(A,B)



