scores <- c(10, 12, 15, 18, 20, 22, 25, 28, 30, 80)

boxplot(scores,
        main = "Tennis Player Scores",
        ylab = "Points Scored",
        col = "lightgreen")

print(boxplot.stats(scores)$out)
