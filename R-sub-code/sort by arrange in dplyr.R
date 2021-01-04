library(dplyr)

df%>%filter(time>=365 & age < 50)%>%
  select(X,time)%>%
  arrange(desc(time))