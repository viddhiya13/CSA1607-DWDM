age <- c(13,15,16,16,19,20,20,21,22,22,
         25,25,25,25,30,33,33,35,35,35,
         35,36,40,45,46,52,70)

print(mean(age))
print(median(age))

mode_age <- names(table(age))[table(age) == max(table(age))]
print(mode_age)

print((min(age) + max(age))/2)
print(quantile(age, 0.25))
print(quantile(age, 0.75))
