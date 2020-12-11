# 2020/12/11(五), 109學年第一學期 資料科學應用 R期中考
#
# 學號:A107260007      姓名:蕭亞青
#
# 本檔案為各題之程式碼檔，無執行結果


# ex1(a)
study <- function(x, y){
  
  Tuition <- 600*x + 400*y  
  U <- sqrt(x)*sqrt(y)
  ifelse(Tuition <= 12000,"*", " ")
  cat(Tuition, U)
}
a <- for(i in 13:17){
              for(j in 8:12){
    cat(study(i, j), "\n")
  }
}
x <- 13:17
y <- 8:12
data.frame(x, y, a)

#ex2(a)
library(readxl)
data <- read_excel("data/Score-109.xlsx", na="NA")
head(data, 6, skip=2)
tail(data, 5)

#ex2(b)
str(data)
colnames(data) <- c("ID", "Calculus", "English")
data[is.na(data)] <- 0
id <- which(data$Calculus < 60 & data$English < 60)
data[id,]

#ex2(c)
my.cor <- function(x, y){
  
  x.bar <- mean(x)
  y.bar <- mean(y)
  a <- x-x.bar
  b <- y-y.bar
  c <- sqrt(sum((x-x.bar)^2))
  d <- sqrt(sum((y-y.bar)^2))
  r <- sum(a*b) / c*d
  r
}
data$Calculus <- as.numeric(data$Calculus)
data$English <- as.numeric(data$English)
data[is.na(data)] <- 0
my.cor(data$Calculus, data$English)

#ex2(d)
cor(data$Calculus, data$English)

#ex3(a)
my.dnorm <- function(x, μ=0, σ=1){
  
  a <- (x-μ)^2 / 2*(σ^2)
  exp(-a)
  b <- sqrt(2*pi)*σ
  d <- exp(-a)/b
  d
}
my.dnorm(2.5, 3, 2)

#ex3(b)
x <- -3:3
dnorm <- for(i in -3:3){
  cat(dnorm(i), "\n")
}
my.dnorm <- for(i in -3:3){
  cat(my.dnorm(i), "\n")
}
data.frame(x, my.dnorm, dnorm)
