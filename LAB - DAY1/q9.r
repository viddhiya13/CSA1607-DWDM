marks <- c(55,60,71,63,55,65,50,55,58,
           59,61,63,65,67,71,72,75)

# Equal-frequency partitioning
sorted_marks <- sort(marks)
bins <- split(sorted_marks,
              rep(1:3, length.out=length(marks),
                  each=1)[order(order(marks))])

# Simple equal-frequency groups
groups <- split(sorted_marks,
                cut(seq_along(sorted_marks),
                    breaks=3, labels=FALSE))
print(groups)

hist(marks, breaks=3,
     main="Equal-Width Partitioning",
     xlab="Marks")
