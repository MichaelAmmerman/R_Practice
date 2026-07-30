library(tidyverse)
library(ggridges)
mpg

ggplot(mpg, aes(x = displ, y = hwy, color = class)) + 
  geom_point()

ggplot(mpg, aes(x = displ, y = hwy, color = class, shape = class)) + 
  geom_point()

ggplot(mpg, aes(x = displ, y = hwy, size = class)) +
  geom_point()

ggplot(mpg, aes(x = displ, y = hwy, alpha = class)) +
  geom_point()

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(color = "blue")

ggplot(mpg) + geom_point(aes(x = displ, y = hwy color = "blue"))

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()


ggplot(mpg, aes(x = displ, y = hwy, linetype = drv)) +
  geom_smooth()

ggplot(mpg, aes(x = displ, y = hwy, shape = drv)) +
  geom_smooth()

ggplot(mpg, aes(x = displ, y = hwy, linetype = drv)) + 
  geom_smooth()

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_smooth()

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_smooth(aes(group = drv))

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_smooth(aes(color = drv), show.legend = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_smooth(aes(color = class))+
  geom_smooth()


ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()+
  geom_point(
    data = mpg |> filter(class == "2seater"),
    color = "red"
    ) +
  geom_point(
    data = mpg |> filter(class == "2seater"),
    shape = "circle open", size = 3, color = "red"
  )

# Left
ggplot(mpg, aes(x = hwy)) +
  geom_histogram(binwidth = 2)

ggplot(mpg, aes(x = hwy)) +
  geom_density()

ggplot(mpg, aes(x = hwy)) +
  geom_boxplot()

ggplot(mpg, aes(x = hwy, y = drv, fill = drv, color = drv))+
  geom_density_ridges(alpha = .5, show.ledgend = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point()+
  facet_wrap(~cyl)

ggplot(mpg, aes(x = displ, y = hwy))+
  geom_point() +
  facet_grid(drv ~ cyl)

ggplot(mpg, aes(x = displ, y = hwy))+
  geom_point()+
  facet_grid(drv ~ cyl, scales = "free_y")

ggplot(diamonds, aes(x = cut)) +
  geom_bar()

diamonds |> 
  count(cut) |> 
  ggplot(aes(x = cut, y = n)) +
  geom_bar(stat = "identity")

ggplot(diamonds)+
  stat_summary(
    aes(x = cut, y = depth),
    fun.min = min,
    fun.max = max,
    fun = median
)

ggplot(mpg, aes(x = drv, fill = class)) + 
  geom_bar()

ggplot(mpg, aes(x = drv, fill = class))+
  geom_bar(alpha = 1/5, position = "identity")

ggplot(mpg, aes(x = drv, color = class))+
  geom_bar(fill = NA, position = "identity")

nz |> map_data("nz")

