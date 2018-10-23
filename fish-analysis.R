
library(tidyverse)
library(ggplot2)

source("R/themes.R")

fish <- read_csv("data/fish.csv")

View(fish)

# fish<-read.csv("C:/Users/Sarah/Desktop/gittutorial/data/fish.csv")

fish %>% 
  mutate(length_cat=case_when(length>=300~"big", length<300~"small"))->fish
  

ggplot()+ 
  geom_histogram(data=fish, aes(scalelength, fill=length_cat))+ 
  facet_wrap(~length_cat)+ 
  theme_paper()


## Chris's modifications

ggplot() +
  geom_histogram(data = fish, aes(x = scalelength, fill = length_cat), colour = "black", bins = 25) +
  facet_wrap(~length_cat) +
  coord_cartesian(ylim = c(0,500), xlim = c(0, 12), expand = FALSE) +
  theme_classic() +
  theme(legend.position = "none",
        panel.spacing = unit(2, "lines"))
