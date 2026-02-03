setwd(dir = "L:/BUT/SD/Promo 2025/acirak/Programmation statistique")
getwd()
bodies_karts = read.csv(file = "L:/BUT/SD/Promo 2025/acirak/Programmation statistique/dataset/bodies_karts.csv", header = TRUE, sep = ";", dec = ",")
tires = read.csv(file = "L:/BUT/SD/Promo 2025/acirak/Programmation statistique/dataset/tires.csv", header = TRUE, sep = "\t", dec = ",")
gliders = read.csv(file = "L:/BUT/SD/Promo 2025/acirak/Programmation statistique/dataset/gliders.csv", header = TRUE, sep = "|", dec = ".")
drivers = read.csv(file = "L:/BUT/SD/Promo 2025/acirak/Programmation statistique/dataset/drivers.csv", header = TRUE, sep = ";", dec = ",")
dim(bodies_karts)
dim(tires)
dim(gliders)
dim(drivers)

View(drivers)
View(gliders)
View(tires)
View(bodies_karts)

"Question 1"
summary(bodies_karts)
summary(tires)
summary(gliders)
summary(drivers)

"Question 2"
plot(drivers$Weight, drivers$Acceleration, main = "Acceleration selon poids")
"Question 3"

correlation <- cor(x = drivers$Weight, y =  drivers$Acceleration)

"Question 4"
covXY = cov(x = drivers$Weight, y = drivers$Acceleration)
sX = sd(drivers$Weight)
sY = sd(drivers$Acceleration)
print(covXY / (sX*sY))

"Question 5"
coef_determination = correlation^2

"Question 6"
matrice = cor(drivers[ , -1])
matrice = round(matrice,2)
View(matrice)

"Question 7"
install.packages("corrplot")

"Question 8"
library(corrplot)
corrplot(matrice, "circle")

"Question 9"
matrice_gliders = cor(gliders[, -c(1,11)])
matrice_gliders = round(matrice_gliders, 2)
View(matrice_gliders)
corrplot(matrice_gliders, "circle")

matrice_tires = cor(tires[, -1])
matrice_tires = round(matrice_tires, 2)
View(matrice_tires)
corrplot(matrice_tires, "circle")

matrice_karts = cor(bodies_karts[,-1])
matrice_karts = round(matrice_karts, 2)
View(matrice_karts)
corrplot(matrice_karts, "circle")

"Exercie 3"
"Question 1"
resultat <- drivers[, c(1,2)]
View(resultat)

"Question 2"
resultat_2 <- drivers[1:10, c(1, 3)]
View(resultat_2)

"Question 3"
resultat_3 <- drivers[,-c(5,7,9)]
View(resultat_3)

"Question 4"
resultat_4 <- drivers[, -c(2, 3)]
View(resultat_4)

"Question 5"
resultat_5 <- drivers[,c("Driver", "Acceleration", "Weight")]
View(resultat_5)

"Question 6"
resultat_6 <- drivers[c(32,3,12),]
View(resultat_6)

"Question 7"
resultat_7 <- drivers[c(32, 3, 12),]
View(resultat_7)

"Question 8"
ordre_8 = order(drivers$Weight)
resultat_8 <- drivers[ordre_8, c("Driver", "Weight")]
View(resultat_8)

"Question 9"
ordre_9 = order(drivers$Acceleration)
resultat_9 <- drivers[ordre_9, c("Driver", "Acceleration")]
View(resultat_9)