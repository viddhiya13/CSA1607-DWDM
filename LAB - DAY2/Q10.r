data <- read.csv("diabetes.csv")

# Scatterplot
plot(data$Age, data$BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     pch = 19, col = "blue")

# Bar chart of average blood pressure by age
avg <- aggregate(BloodPressure ~ Age,
                 data = data, FUN = mean)

barplot(avg$BloodPressure,
        names.arg = avg$Age,
        main = "Average Blood Pressure by Age",
        xlab = "Age",
        ylab = "Average Blood Pressure",
        col = "lightblue",
        las = 2)
