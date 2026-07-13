library(tidyverse)
library(palmerpenguins)
library(ggthemes)
penguins
glimpse(penguins)
ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)
       ) +
  geom_point()
       