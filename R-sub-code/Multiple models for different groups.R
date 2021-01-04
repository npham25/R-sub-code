#Fit same model for different countries in gapminder data
#Export summary by using map with .x is the result of the previous map()
gapminder %>% split(.$country) %>% 
  map (.,~ lm(lifeExp ~ year, data=.x))%>%
map(~ summary(.x))%>%
  map_dbl("r.squared")

#Example 2: Logistic regression
df$Class=as.numeric(df$binaryClass)-1

formula=as.formula(Class~TSH+T4U+T3+TT4)

df%>%select(-binaryClass)%>%
  split(.$referral.source)%>%
  map(~glm(formula,
           data=.,
           family = "binomial"))%>%
  map(summary)