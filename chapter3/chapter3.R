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

flights |>
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60,
    .after = day
  )


flights |> 
  select(year, month, day)

flights |>
  select(year:day)

flights |>
  select(!year:day)


flights |> 
  select(tail_num = tailnum)

flights |> 
  rename(tail_num = tailnum)

flights |>
  relocate(time_hour, air_time)



var <- c("year", "month", "day", "dep_delay", "arr_delay")

flights |>
  select(any_of(var))

flights |> 
  select(contains("TIME"))
flights |>
  select(tailnum, arr_delay) |>
  arrange(arr_delay)


flights |> 
  relocate(time_hour, air_time)

flights |> 
  relocate(year:dep_time, .after= time_hour)

flights |> 
  relocate(starts_with("arr"), .before = dep_time)


flights |>
  filter(dest == "IAH") |>
  mutate(speed = distance / air_time * 60) |>
  select(year:day, dep_time, carrier, flight, speed) |>
  arrange(desc(speed))

