library(tidyverse)
library(palmerpenguins)
library(ggthemes)
penguins
glimpse(penguins)
ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)
       ) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "species", shape = "Species"
  ) +
  scale_color_colorblind()

#excercises

ggplot(data = penguins) + 
  geom_point()

help(penguins)

ggplot(penguins, aes(x = fct_infreq(species))) + 
  geom_bar()

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 200)

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 20)

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 2000)

ggplot(penguins, aes(x = "species")) + 
  geom_bar(color = "red")


ggplot(penguins, aes(x = "species")) + 
  geom_bar(fill = "red")

ggplot(penguins, aes(x = species, y = body_mass_g)) +
  geom_boxplot()


ggplot(penguins, aes(x = body_mass_g, color = species, fill = species)) + 
  geom_density( alpha = .5)

ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar()

ggplot(penguins, aes(x = island, fill = species)) +
  geom_bar(position = "fill")

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = island)) +
  facet_wrap(~island)
mpg

?mpg
