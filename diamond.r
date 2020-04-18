library(ggplot2)
View(diamonds)
library(dplyr)
library(magrittr)
diamonds %>% filter(price >1000 & cut=="Ideal") -> d_1000
View(d_1000)
p <- ggplot(data =diamonds,aes(x=carat,y=price,col=cut))+geom_point()
q <- p + ggtitle("Diamond price based on the quality of the cut") + theme(plot.title = element_text(lineheight=.8, face="bold"))
q
