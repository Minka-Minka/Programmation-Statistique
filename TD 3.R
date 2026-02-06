df <- read.csv("L:/BUT/SD/Promo 2025/acirak/Semestre 2/Programmation statistique/dataset/fao.csv", sep = ";", dec = ",",  header = TRUE)
nb_pays <- nrow(df) "donne le nombre de lignes"
summary(df)
View(df)

"Question 1"
moyenne_mondiale <- mean(df$Dispo_alim, na.rm =TRUE) "na.rm = remove les NA"


"Question 2"
nb_habitants <- sum(df$Population, na.rm = TRUE)

"Question 3"
sigma_export <- sd(df$Export_viande, na.rm = TRUE)
sigma_import <- sd(df$Import_viande, na.rm = TRUE)

"Question 4"
mediane <- median(df$Prod_viande, na.rm = TRUE)

"Question 5"
quartiles <- quantile(df$Dispo_alim)


"Question 6"
centiles <- quantile(df$Dispo_alim, seq(0, 1, 0.01))

"Exercice 3"
"Question 1"

rang = order(df$Population)
res_1 = head(df[rang,], n = 5)
View(res_1)

"Question 2"
rang = order(df$Population, decreasing = TRUE)
res_2 = head(df[rang,], n = 5)
View(res_2)

"Question 3"
rang = order(df$Prod_viande, decreasing = TRUE)
res_3 <- head(df[rang,], n = 5)
View(res_3)

"Question 4"
rang = order(df$Import_viande, decreasing = TRUE)
res_4 <- head(df[rang,], n = 5)
View(res_4)

"Question 5"
res_5 = subset(df, Dispo_alim >= 2300)
View(res_5)

"Question 6"
res_6 = subset(df, Dispo_alim > 3500 & Import_viande >= 1000)
View(res_6)

"Question 7"
res_7 = subset(df, Nom %in% c("France","Belgique"))
View(res_7)

"Exercice 4"
"Question 1"
df$Part_export <- df$Export_viande/df$Prod_viande

"Question 2"
df$Dispo_alim_pays <- df$Dispo_alim/df$Population

"Question 3"
write.table(x = df, file = "ExportTp2.csv")

"Question 4"
dispo_alim_mondiale = sum(df$Dispo_alim_pays, na.rm=TRUE)

"Question 5"
adultes <- dispo_alim_mondiale/2300

"Exercice 5"
"Question 1"
