library(MASS)

# Levels: Compact Large Midsize Small Sporty Van

names <- c("Small", "Compact", "Large", "Midsize", "Sporty", "Van")

for(name in names){
	cars <- Cars93[Cars93$Type == name,]
	
	x <- cars[which.min(cars$Min.Price),]$Model
	y <- cars[which.min(cars$Min.Price),]$Manufacturer

	cat("The cheapest", name, "car is the ",as.character(x), as.character(y),".\n")
}



