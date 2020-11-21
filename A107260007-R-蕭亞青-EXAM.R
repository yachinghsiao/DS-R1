#1. (a)
library(readxl)
data1 <- read.csv("data/Calculus-score-A.csv")
data2 <- read_excel("data/Calculus-score-B.xls", na="NA")
head(data1, 5)
tail(data1, 5)
head(data2, 5)
tail(data2, 5)

#1.(b)
class(data1)
str(data1)
class(data2)
str(data2)

score <- rbind(data1, data2)

#1.(c)
data1$total <- c(as.matrix(data1[, 5:11])%*% as.vector(c(0.07, 0.07, 0.08, 0.08, 0.15, 0.25, 0.3)))











#2.(a)
set.seed(123456)
Letters.code <- sample(LETTERS[1:5], 20, replace=T)
Numbers.code <- as.numeric(Letters.code)
my.code <- data.frame(Letters.code, Numbers.code)