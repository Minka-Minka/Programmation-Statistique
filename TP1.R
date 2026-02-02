data(iris)
iris
View(iris)
nombre_lignes <- nrow(iris)
nombre_colonnes <- ncol(iris)
nom_colonnes <- colnames(iris)
resume <- summary(iris)
iris[c("Sepal.Length", "Species")]
iris[c(100, 103, 105),]
iris[50:100,]
moyenne <- mean(iris$Sepal.Length)
médiane <- median(iris$Sepal.Width)
écart_type = sd(iris$Petal.Length)
déciles <- quantile(iris$Petal.Width, probs = seq(0.1,0.9,0.1))