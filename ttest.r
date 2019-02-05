data(tips, package='reshape2')
head(tips)

tips$tip

mean(tips$tip)

t.test(tips$tip, mu=3.00, alternative='two.sided')