# R code to perform statistical tests related to ICS Project 2.

#import libraries
library(tidyverse)
library(qwraps2)
library(ggpubr)
library(xtable)
library(rstatix)
options(qwraps2_markup = "latex") 
theme_set(theme_gray())

#read the data file from local machine
#This path needs to point to data file in your local machine
data_realestate = read.csv('ImmoDataRuhr.csv')

#Display the data
data_realestate


#Task 2

#Calculate pairwise differences

Bochum_sqmPrice <- data_realestate %>%
  filter(regio2 == "Bochum") %>%
  pull(sqmPrice)
Dortmund_sqmPrice <- data_realestate %>%
  filter(regio2 == "Dortmund") %>%
  pull(sqmPrice)
Duisburg_sqmPrice <- data_realestate %>%
  filter(regio2 == "Duisburg") %>%
  pull(sqmPrice)
Essen_sqmPrice <- data_realestate %>%
  filter(regio2 == "Essen") %>%
  pull(sqmPrice)


# Compute t-test
res <- t.test(Bochum_sqmPrice, Dortmund_sqmPrice)
print(res)
res <- t.test(Bochum_sqmPrice, Duisburg_sqmPrice)
print(res)
res <- t.test(Bochum_sqmPrice, Essen_sqmPrice)
print(res)

res <- t.test(Dortmund_sqmPrice, Duisburg_sqmPrice)
print(res)
res <- t.test(Dortmund_sqmPrice, Essen_sqmPrice)
print(res)

res <- t.test(Duisburg_sqmPrice, Essen_sqmPrice)
print(res)


#Compute t test using by adjusting results using Bonferroni method

pwc_bonferroni <- data_realestate %>%
  pairwise_t_test(
    sqmPrice ~ regio2, pool.sd = FALSE,
    p.adjust.method = "bonferroni"
  )
print(pwc_bonferroni)


