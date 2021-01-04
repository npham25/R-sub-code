library(dplyr)
#10% population from each status
df%>%group_by(status)%>%sample_frac(0.1)
