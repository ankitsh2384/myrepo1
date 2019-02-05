# install.packages('colorspace')
# install.packages('ggplot2', repos = "http://cran.rstudio.com")

library(ggplot2)


data(diamonds, package='ggplot2')

ggplot(diamonds)

ggplot(diamonds, aes(x=carat, y=price))


ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()


