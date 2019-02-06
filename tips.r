data(tips, package='reshape2')
library(ggplot2)
library(coefplot)
library(useful)


ggplot(tips, aes(x=total_bill, y=tip)) +
    geom_point() +
    geom_smooth(method='lm')

tip1 <- lm(tip ~ total_bill, data=tips)

tip1