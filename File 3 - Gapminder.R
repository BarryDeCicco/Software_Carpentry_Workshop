# File 3 - Gapminder

library(tidyverse)

gapminder_data <- read_csv('Data/gapminder_data.csv')

gapminder_data$year <-as.integer(gapminder_data$year)
summary(gapminder_data$year)

gapminder_data$pop <-as.integer(gapminder_data$pop)
summary(gapminder_data$pop)

summary(gapminder_data$country)

str(gapminder_data)
summary(gapminder_data)

Hmisc::describe(gapminder_data)

describe.data.frame(gapminder_data)


head(gapminder_data, n=10)

tail(gapminder_data)
