library(dplyr)
library(nycflights13)

not_cancelled <- flights |> 
  filter(!is.na(dep_delay), !is.na(arr_delay))
not_cancelled


