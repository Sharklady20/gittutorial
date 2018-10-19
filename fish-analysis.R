
library(tidyverse)
library(ggplot2)
fish <- read_csv("~/R Class Fall 2018/fish.csv")
View(fish)
source("R/themes.R")
fish<-read.csv("C:/Users/Sarah/Desktop/gittutorial/data/fish.csv")

fish %>% 
  mutate(length_cat=case_when(length>=200~"big", length<200~"small"))->fish
  
  