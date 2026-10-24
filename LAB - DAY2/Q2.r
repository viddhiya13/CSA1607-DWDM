x <- c(1,1,5,5,5,5,5,8,8,10,10,10,10,
       12,14,14,14,15,15,15,15,15,15,
       18,18,18,18,18,20,20,20,20,20,
       20,21,21,21,21,25,25,25,25,25,28,28,30)

# Divide into 3 equal-frequency bins
bins <- split(x, cut(seq_along(x), 3, labels = FALSE))
print(bins)

# Smoothing by bin means
mean_bins <- lapply(bins, function(b) rep(mean(b), length(b)))
print(mean_bins)

# Smoothing by bin boundaries
boundary_bins <- lapply(bins, function(b) {
  lo <- min(b)
  hi <- max(b)
  sapply(b, function(v) {
    if (abs(v - lo) <= abs(v - hi)) lo else hi
  })
})
print(boundary_bins)

# Histogram
hist(x, main = "Price Histogram",
     xlab = "Price", col = "lightblue")
