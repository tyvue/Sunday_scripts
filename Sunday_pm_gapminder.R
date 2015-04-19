# This is a script to explore the gapminder dataset using R
# Touyia Vue
# touyiavue@gmail.com
# April 19th, 2015

# install dplyr package and dependencies
# install.packages("dplyr", dependencies = TRUE)

# Read in data as table-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", sep = "\t", header = TRUE)


gap.in[1:15,1:6]

add.me(3,4)

gap.in %>% filter(pop > 15000000) %>% select(country, year, pop, lifeExp) 

x <- gap.in %>% 
  filter(year < 1990) %>% 
  group_by(continent, year) %>% 
  summarize (min = mean(pop))

attach(iris)

# install.packages("tidyr", dependencies = TRUE)

# load tidyr package
library("tidyr")


