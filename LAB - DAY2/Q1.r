A <- c(18, 22, 20)
B <- c(2, 28, 40)
C <- c(20, 40, 40)

data <- data.frame(A, B, C)

# Covariance between B and C
cov(B, C)

# Covariance matrix
cov(data)

# Correlation between B and C
cor(B, C)

# Correlation matrix
cor(data)
