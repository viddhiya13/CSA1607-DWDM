age <- c(5, 15, 20, 50, 80, 110)
frequency <- c(200, 450, 300, 1500, 700, 44)

N <- sum(frequency)
cf <- cumsum(frequency)
i <- which(cf >= N/2)[1]

L <- c(1, 5, 15, 20, 50, 80)[i]
h <- age[i] - L
f <- frequency[i]
prev_cf <- if (i == 1) 0 else cf[i-1]

median_value <- L + ((N/2 - prev_cf)/f) * h
print(median_value)
