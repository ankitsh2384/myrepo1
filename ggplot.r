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


#one dimension histogram
ggplot(diamonds, aes(x=price)) +
        geom_histogram()

ggplot(diamonds, aes(x=price)) +  geom_histogram(bins=10)
ggplot(diamonds, aes(x=price)) +  geom_histogram(bins=30)
ggplot(diamonds, aes(x=price)) +  geom_histogram(bins=70)
ggplot(diamonds, aes(x=price)) +  geom_histogram(bins=100)


ggplot(diamonds, aes(x=price)) +  geom_histogram(bins=100, aes(color=cut))

ggplot(diamonds, aes(x=price)) +  geom_histogram(bins=20, aes(fill=cut))


ggplot(diamonds, aes(x=cut, y=price)) +  geom_boxplot()

ggplot(diamonds, aes(x=cut, y=price)) +  
    geom_jitter(shape=1, size=1, aes(color=cut)) + geom_violin()



ggplot(diamonds, aes(x=cut, y=price)) + 
    geom_jitter(alpha=1/5, size=1, shape=1, width=0.35, aes(color=carat)) + 
    geom_violin(alpha=1/2, color='grey50', draw_quantiles=c(.25, .5, .75)) + 
    scale_color_gradient('Diamond Size', low='#56B1F7', high='#c91010') + 
    scale_y_continuous(labels=scales::dollar) + 
    labs(x='Cut', y='Price', title='Price vs Cut and Carat')



library(ggthemes)


p <- ggplot(diamonds, aes(x=carat, y=price, color=cut)) +  geom_point()
p

p + theme_economist()
p + theme_economist() + scale_color_economist()
p + theme_tufte()
p + theme_tufte() + scale_color_tableau()
p + theme_excel() + scale_color_excel()
p + theme_excel() + scale_color_excel_new()
