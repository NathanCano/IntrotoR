#data for states
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld", "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt", "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw", "vic", "vic", "act")

#creating groupings by state
statef<- factor(state)
print(statef)

#displaying the "levels" for state
levels(statef)

#income data that corresponds to state data
incomes<- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

#Means for each state
# tapply() is used to apply a function
incmeans<- tapply(incomes, statef, mean)
print(incmeans)

#creating a function for standard error
stdError<- function(x) sqrt(var(x)/length(x))

#Standard error for each state
incster<- tapply(incomes, statef, stdError)
print(incster)

#function for sample sizes
n<- function(x) length(x)
samplesizes<- tapply(incomes, statef, n)
print(samplesizes)

#95% confidence limits lower
conffunclow<- function(x)qt(.05, 29, lower.tail= TRUE, log.p= FALSE)
conflimitslow<- tapply(incomes, statef, conffunclow)
print(conflimitslow)

#95% confidence limits upper
conffuncup<- function(x)qt(.05, 29, lower.tail=FALSE, log.p= FALSE)
conflimitsup<- tapply(incomes, statef, conffuncup)
print(conflimitsup)

