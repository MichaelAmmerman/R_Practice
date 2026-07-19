library(nycflights13)
library(tidyverse)

flights
help(flights)

glimpse(flights)


flights |> 
  filter(dest == "IAH") |>
  group_by(year, month, day) |>
  summarise(arr_delay = mean(arr_delay, na.rm = TRUE))

theseNuts <- flights

theseNuts |> 
  filter(month == 1 & day == 1)

theseNuts |> 
  filter(month == 1 | month == 2)

flights |> filter(month %in% c(1, 2))

jan1 <- flights |> 
  filter(month == 1 & day == 1 )


flights |> 
  arrange(year, month, day, dep_time)

flights |>
  arrange(desc(dep_delay))

flights |>
  distinct()
