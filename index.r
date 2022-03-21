# Add Libraries
library(ggplot2)
library('ISLR')
library(tidyverse)
attach(College)

ggplot(mapping = aes(x = Top10perc, y = Outstate)) + 
    geom_jitter() + 
    geom_smooth() 

ggplot(mapping = aes(x = Top10perc, y = Outstate,  
 color = Private)) +  
        geom_jitter() + 
        geom_smooth() 

ggplot(College, mapping = aes(x = Top10perc, y = Outstate)) + 
facet_wrap(~ Private) + 
  geom_jitter() + 
  geom_smooth() 

ggplot(mapping = aes(x = Top10perc, y = Outstate)) +
  geom_jitter() +
  geom_smooth(method = "lm")

x <- Top10perc
y <- Outstate
ggplot(mapping = aes(x = x, y = y)) +
     geom_jitter(color="red") +
     geom_smooth(method=lm, se=FALSE) +
     geom_segment(aes(x=x, xend=x, y=y, yend=lm(y ~ x)$fitted.values))
