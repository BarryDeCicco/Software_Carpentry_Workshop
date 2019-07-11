# File 1

1 + 100

3+5 - 2

x <- (3+5) *2

2/10000

x
y <- asin(sin(x))
asin(y)

1==1
x <- 1
y <- 1

as.numeric(x)==as.numeric(y)


class(as.numeric(x))

1:5
y <- 1:5
class(y)
y[1]
str(y)
y*2

ls()      # this lists all objects in the global environment.
rm(x)


library(Hmisc)
#  installed.packages()
(.packages())
rm(list=ls())


mass <- 47.5
age <- 'abcd'
mass <- mass * 2.3
age <- age - 20

sessionInfo()

library(gapminder)
library(ggplot2)
library(plyr)

library(purrr)
library(magrittr)
library(dplyr)



x <- c('element', 45.3, 42, TRUE)
class(x)

y <- c(TRUE, FALSE,FALSE, FALSE, TRUE)
class(y)
 
z <- as.character(y)

aleph_null <- as.numeric(y)

a <- c(1,0,-45)
b <-as.logical(a)

list1 <-list(c('element','iron'), 45.3, 42, TRUE)
class(list1)
str(list1)
a[-2]

list1[[1]]

cats <-data.frame(
                  coat=c('calico','black','tabby'),
                  weight=c(2.1,5.0,3.2),
                  like_string=c(1,0,1),
                  stringsAsFactors = FALSE
                  )

# could also use 'options(stringsAsFactors=FALSE)',
# but this would affect everything!
# see:  https://stackoverflow.com/questions/18005071/how-do-you-remove-factors-from-a-matrix-vector-etc

class(cats)
str(cats)



# From:  https://stackoverflow.com/questions/2851015/convert-data-frame-columns-from-factors-to-characters/2853231#2853231
# there is also a Purrr-based answer, which doesn't work.

cats %>% mutate_if(is.factor, as.character) -> cats

paste("My cat is", cats$coat)


################ Challenge 1:

age <- c(2,3,5)
b <-7
cats <-cbind(cats, age)
cats$human_age <- cats$age*7 
str(cats)
# convert human_age to a factor - note, ages are now *labels*
# 14 becomes 1, with a label = '14'

cats$human_age <- as.factor(cats$human_age)
str(cats)
# convert back to numeric, which means grabbing the labels
# of the factor levels, not the levels:


cats$human_age_2 <- as.numeric(levels(cats$human_age))/7
str(cats)

#alternate method:

human_age <- as.numeric(as.character(cats$human_age))

rownames(cats)         

rownames(cats)  <- c('Moe','Larry','Curly') 

rownames(cats)       

############# Challenge 2

challenge2 <- data.frame(
  firstname=c('Barry'),
  lastname=c('DeCicco'),
  lucky_number=c(743),
  stringsAsFactors = FALSE
)

challenge2_extra_row <- data.frame(
  firstname=c('Sung'),
  lastname=c('Park'),
  lucky_number=c(7),
  stringsAsFactors = FALSE
)

combined_challenge <- rbind(challenge2,challenge2_extra_row)

coffee_time <-c(TRUE,FALSE)

combined_challenge <- cbind(combined_challenge,coffee_time)

str(combined_challenge)



