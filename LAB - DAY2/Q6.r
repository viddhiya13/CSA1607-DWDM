data(mtcars)

plot(mtcars$mpg, type = "l",
     col = "blue", ylim = range(mtcars$mpg, mtcars$qsec),
     xlab = "Index", ylab = "Values",
     main = "MPG and QSEC")

lines(mtcars$qsec, col = "red")

legend("topright",
       legend = c("MPG", "QSEC"),
       col = c("blue", "red"), lty = 1)
