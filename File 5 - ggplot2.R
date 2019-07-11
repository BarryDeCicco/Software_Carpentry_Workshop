# File 5 - ggplot2

# Concept:
#   1)  Data set;
#   2)  Coordinate system;
#   3)  Geoms.

ggplot(data=gapminder_data,
       mapping=aes(x=gdpPercap, y=lifeExp, color=continent),
      )       +
  geom_point() +
  geom_smooth()

#  Challenge 1
ggplot(data=gapminder_data,
       mapping=aes(x=year, y=lifeExp, ),   #  color=continent
      )       +
  geom_point()     +
  geom_smooth()


# graphing over time:

ggplot(data=gapminder_data,
       mapping=aes(x=year, 
                   y=lifeExp, 
                   by=country
                   ),
      )       +
  geom_point(mapping=aes(color=continent)) +
  geom_line(mapping=aes(color=continent))

# the green lower outlier is Cambodia,
# during the Khmer Rouge era:

gapminder_data[gapminder_data$year <1980 &
                 gapminder_data$year > 1975 &
                 gapminder_data$lifeExp < 35 , ]


ggplot(data=gapminder_data,
       mapping=aes(x=gdpPercap, 
                   y=lifeExp, 
                   color=continent),
      )       +
  geom_point(alpha=0.25) +
  scale_x_log10()  +
  geom_smooth(method="lm")

###### Challenge 4a

ggplot(data=gapminder_data,
       mapping=aes(x=gdpPercap, 
                   y=lifeExp, 
                   color=continent),
)                                       +
  geom_point(alpha=0.25, 
             size=1.25,
             shape = 1
             )                          +
  scale_x_log10()                       +
  geom_smooth(method="lm")              +
  facet_wrap(~continent)

############# Resources:



