library(ggplot2)

#Groups divided by drv in data mpg

#Same plot, using the frequency polygon
ggplot(mpg, aes(displ, colour = drv)) + 
geom_freqpoly(binwidth = 0.5)

#OR
#Different histograms for different groups
ggplot(mpg, aes(displ, fill = drv)) + 
geom_histogram(binwidth = 0.5) + 
facet_wrap(~drv, ncol = 1)