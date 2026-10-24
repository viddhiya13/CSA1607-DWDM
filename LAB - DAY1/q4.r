data <- c(11,13,13,15,15,16,19,20,20,20,21,21,
          22,23,24,30,40,45,45,45,71,72,73,75)

bins <- split(data, rep(1:6, each=4))

print("Bin Mean")
print(sapply(bins, mean))

print("Bin Median")
print(sapply(bins, median))

print("Bin Boundaries")
print(lapply(bins, function(x) c(min(x), max(x))))
