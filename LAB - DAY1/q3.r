x <- c(200, 300, 400, 600, 1000)

min_max <- (x - min(x))/(max(x) - min(x))
print(min_max)

z_score <- (x - mean(x))/sd(x)
print(z_score)
