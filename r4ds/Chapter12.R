library(tidyverse)
library(nycflights13)

x <- c(1, 2, 3, 5, 7, 11, 13)
x * 2

df <- tibble(x)

df |> 
  mutate(y = x * 2)

flights |> 
  filter(dep_time > 600 & dep_time < 2000 & abs(arr_delay) < 20)

x <- c(1 / 49 * 49, sqrt(2) ^ 2)

near(x, c(1, 2))

is.na(c(TRUE, NA, FALSE))

is.na(c(1, NA, 3))

is.na(c("a", NA, "b"))      

