library(tidyverse)

ggplot(diamonds, aes(x = carat))+
  geom_histogram(binwidth = .5)

smaller <-  diamonds |> 
  filter(carat < 3)

ggplot(smaller, aes(x = carat)) +
  geom_histogram(binwidth = 0.01)


unusual <- diamonds |> 
  filter(y < 3 | y > 20) |> 
  select(price, x, y, z) |> 
  arrange(y)
