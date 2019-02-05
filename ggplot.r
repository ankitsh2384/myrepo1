# install.packages('colorspace')
# install.packages('ggplot2', repos = "http://cran.rstudio.com")

library(ggplot2)


data(diamonds, package='ggplot2')

ggplot(diamonds)

ggplot(diamonds, aes(x=carat, y=price))


ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point()

#change the shape to ring

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(shape=1)

#changing the size

ggplot(diamonds, aes(x=carat, y=price, color=cut)) + geom_point(shape=1, size=1)


ggplot(diamonds, aes(x=carat, y=price, color=cut, shape=cut)) + 
      geom_point(shape=1, size=1)


ggplot(diamonds, aes(x=carat, y =price, color=cut)) +
    geom_point(shape=1, size=1) +
    geom_smooth()


ggplot(diamonds, aes(x=carat, y =price)) +
    geom_point(shape=1, size=1, aes(color=cut)) +
    geom_smooth() +
    geom_smooth(aes(color=cut))


#adding transparency to the plot using "alpha"


ggplot(diamonds, aes(x=carat, y =price)) +
    geom_point(shape=1, size=1, aes(color=cut), alpha=1/3) +
    geom_smooth() +
    geom_smooth(aes(color=cut))

#small multiple - split the data in multiple frame "Function = facet_wrap"

ggplot(diamonds, aes(x=carat, y =price)) +
    geom_point(shape=1, size=1, aes(color=cut), alpha=1/3) +
    geom_smooth() +
    geom_smooth(aes(color=cut)) +
    facet_wrap( ~ cut)


#Removing legends "function theme"

ggplot(diamonds, aes(x=carat, y =price)) +
    geom_point(shape=1, size=1, aes(color=cut), alpha=1/3) +
    geom_smooth() +
    geom_smooth(aes(color=cut)) +
    facet_wrap( ~ cut) +
theme(legend.position='none')