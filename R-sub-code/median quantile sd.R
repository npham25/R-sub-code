library(dplyr)

df %>%
  group_by(status) %>%
  summarise_at("time",funs(Mean=mean,
                           Median=median,
                           SD=sd,
                    LL=quantile(.,probs=0.05),
                    UL=quantile(.,probs=0.95))
               )