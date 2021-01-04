load_pack <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

load_pack(c('ISLR', 'MASS', 'gbm', 'psych', 'dplyr', 
           'ggpubr', 'corrplot', 'GGally', #plots
           'factoextra', #plots for PCA
           'tree', 'randomForest', 'e1071', 'FNN'
))