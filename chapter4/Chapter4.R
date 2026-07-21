library(tidyverse, nycflights13)

flights
short_flights <- 
  flights |> 
  filter(air_time < 60)

z <- (a + b)^2 / d

flights |> 
  summarize(mean(dep_delay, na.rm = TRUE))


help(mean)
