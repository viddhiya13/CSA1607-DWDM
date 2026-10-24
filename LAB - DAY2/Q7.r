# Install once if required
# install.packages("boot")

library(boot)
data(water)

plot(water$hardness, water$mortality,
     xlab = "Hardness", ylab = "Mortality",
     main = "Hardness vs Mortality")

model <- lm(mortality ~ hardness, data = water)
abline(model, col = "red")

print(summary(model))

# Predict mortality for hardness = 88
predict(model, newdata = data.frame(hardness = 88))
