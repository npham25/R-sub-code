severity_3 <- severity_3 %>% 
  mutate(severity_recode = recode_factor(.$severity, 'Mild'=1, 'Moderate'=2, 'Severe'=3))
