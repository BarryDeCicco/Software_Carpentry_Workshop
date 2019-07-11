row1 <- list("Grace","Hopper",0)
row2 <- list("Marie","Curie",238)
coffee_time <- c(TRUE,TRUE)


df <- as.data.frame(rbind(row1, row2))

df <- cbind(df, coffee_time)

colnames(df) <- c('first name', 'last name', 'lucky number', 
                  'time for coffee?')



