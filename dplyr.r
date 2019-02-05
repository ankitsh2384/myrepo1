library(dplyr)

data(diamonds, package='ggplot2')
diamonds

head(diamonds)
head(diamonds, n=3)
tail(diamonds, n=2)

head(diamonds)
diamonds %>% head()

tail(head(diamonds, n=4), n=2)
diamonds %>% head(n=4) %>% tail(n=2)

# ctrl+shift+M "%>%"  "Shortcut to pipe"

select(diamonds,carat, price)

diamonds %>% select(carat, price)

diamonds %>% filter(carat > 1)
diamonds %>% filter(cut == 'Ideal')
diamonds %>% filter(cut == 'Ideal' & carat > 1)

diamonds %>% mutate(carat/price)
diamonds

diamonds %>% mutate(Ratio=carat/price) %>% filter(Ratio > .0007)


diamonds %>% summarize(mean(price))

diamonds %>% summarize(AvgPrice=mean(price) , TotalSize=mean(carat))


diamonds %>% group_by(cut)

diamonds %>% group_by(cut) %>% summarize(AvgPrice=mean(price))

diamonds %>% 
        group_by(cut) %>% 
        summarize(AvgPrice=mean(price) , TotalSize=mean(carat))

diamonds %>% 
    group_by(cut,color) %>% 
    summarize(AvgPrice=mean(price) , TotalSize=mean(carat))


diamonds %>% 
    select(carat,price,cut) %>% 
    filter(carat > 1) %>% 
    group_by(cut) %>% 
    summarize(AvgPrice=mean(price) , TotalSize=mean(carat)) %>% 
    arrange(AvgPrice)


