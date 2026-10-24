v <- c(23,23,27,27,39,41,47,49,50,
       52,54,54,56,57,58,58,60,61)

# Min-Max normalization
print((35-min(v))/(max(v)-min(v)))

# Z-score normalization
print((35-mean(v))/12.94)

# Decimal scaling
print(35/100)
