library(tidyverse)

billboard

billboard |> 
  pivot_longer(
  cols = starts_with("wk"),
  names_to = "week",
  values_to = "rank"
)

billboard |> 
  pivot_longer(
    cols = starts_with("wk"),
    names_to = "week",
    values_to = "rank",
    values_drop_na = TRUE
  ) |> 
  mutate(
    week = parse_number(week)
  )
