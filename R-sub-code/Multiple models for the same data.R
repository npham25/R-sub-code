f1 = lifeExp ~ pop
f2 = lifeExp ~ gdpPercap
f3 = lifeExp ~ pop + gdpPercap
f4 = lifeExp ~ pop + gdpPercap + year
f5 = lifeExp ~ pop + gdpPercap + year + continent

formulas <- list(f1,f2,f3,f4,f5)

mod <- map (formulas, ~ lm(.x, data=gapminder))%>%
  map(~ summary(.x))

mod

#map_df để trích xuất riêng trị số AIC và công thức mỗi mô hình
mod <- map (formulas, ~ lm(.x, data=gapminder))%>%
  map_df(~ data_frame(formula = format(formula(.x)),
                      AIC=AIC(.x),
                      stringAsFactors=F))

mod
