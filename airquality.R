# New York Air Quality

library(MASS)

# Question 1

jpeg('rplot.jpg')
plot(airquality$Ozone)
abline(h=120, col="green")
abline(h=140, col="blue")
abline(h=160, col="red")

text(121, 111, "August 19th")

# Question 2

plot(airquality$Solar.R, airquality$Ozone)

# Question 3

coplot(airquality$Temp ~ airquality$Wind | airquality$Ozone, data = airquality)
airqualityb <- airquality[!is.na(airquality$Ozone),]







