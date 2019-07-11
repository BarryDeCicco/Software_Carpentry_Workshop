# File 4 - Challenge 7


gapminder_data[gapminder_data$year == 1957,]

gapminder_data[,-1:-4]  # correct range; otherwise it mixes pos and neg
gapminder_data[,-(1:4)] # another range method

gapminder_data[gapminder_data$lifeExp > 80,]  # add comman, to pull all columns

gapminder_data[1,c('continent','lifeExp')]  
gapminder_data[1,c(4,5)]  
colnames(gapminder_data)

gapminder_data[gapminder_data$continent %in% 'Asia',]

x <-c(4,5)
gapminder_data[1,c(4,5)] 
gapminder_data[1,x] 