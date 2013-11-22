library(MASS)


# Question 1
# Levels: Compact Large Midsize Small Sporty Van

names <- c("Small", "Compact", "Large", "Midsize", "Sporty", "Van")

for(name in names){
	cars <- Cars93[Cars93$Type == name,]
	
	x <- cars[which.min(cars$Min.Price),]$Model
	y <- cars[which.min(cars$Min.Price),]$Manufacturer

	cat("The cheapest", name, "car is the:", as.character(y), as.character(x),".\n")
}

Cars93$MPG.both <- (Cars93$MPG.city + Cars93$MPG.highway) / 2

for(name in names){
	cars <- Cars93[Cars93$Type == name,]

	x <- cars[which.max(cars$MPG.both),]$Model
	y <- cars[which.max(cars$MPG.both),]$Manufacturer
	
	cat("The most fuel-efficient", name, "car is the:", as.character(y), as.character(x), ".\n")
}


# Question 2

for (name in names) {
	cars <- Cars93[Cars93$Type == name,]
	average <- sum(cars$Horsepower)/nrow(cars)
	
	cat("The average horsepower for", name, "cars is: ", as.character(average), ".\n")
	cars$HP.difference <- (cars$Horsepower - average) 
}

# Question 3

Cars93USA <- Cars93[Cars93$Origin == "USA",]
Cars93nonUSA <- Cars93[Cars93$Origin == "non-USA",]

# Question 4

write.table(Cars93USA, file = "Cars93USA.txt", sep = ",")
x <- read.table(file = "Cars93USA.txt", sep = ",")

# Question 5

save(Cars93nonUSA, file = "Cars93nonUSA.txt")
load (Cars93nonUSA)




