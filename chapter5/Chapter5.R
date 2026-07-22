library(tidyverse)
library(ggplot2)

billboard

billboard |> 
  pivot_longer(
  cols = starts_with("wk"),
  names_to = "week",
  values_to = "rank"
)

billboard_longer <- billboard |> 
  pivot_longer(
    cols = starts_with("wk"),
    names_to = "week",
    values_to = "rank",
    values_drop_na = TRUE
  ) |> 
  mutate(
    week = parse_number(week)
  )

billboard_longer |> 
  ggplot(aes(x = week, y = rank, group = track)) +
  geom_line(alpha = .25) +
  scale_y_reverse()

df <- tribble(
  ~id, ~bp1, ~bp2,
  "A", 100, 120,
  "B", 140, 115,
  "C", 120, 125
)

df |> 
  pivot_longer(
    cols = bp1:bp2,
    names_to = "measurement",
    values_to = "value"
    )

who2 |> 
  pivot_longer(
    cols = !(country:year),
    names_to = c("diagnosis", "gender", "age"),
    names_sep = "_",
    values_to = "count"
  )

household |> 
  pivot_longer(
    cols = !family,
    names_to = c(".value", "child"),
    names_sep = "_",
    values_drop_na = TRUE
  )
cms_patient_experience


cms_patient_experience |> 
  distinct(measure_cd, measure_title)

cms_patient_experience |> 
  pivot_wider(
    id_cols = starts_with("org"),
    names_from = measure_cd,
    values_from = prf_rate
  )
