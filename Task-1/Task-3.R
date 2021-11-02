
library(ggplot2)

data <- read.csv('census_2021_2001.csv')
data_2021 <- data[data$year == '2021',]
data_2001 <- data[data$year == '2001',]

print(ggplot(data_2021, aes(x=total.fertility.rate, y=subregion)) + 
  geom_boxplot(outlier.colour="red", outlier.shape=1,outlier.size=2)+
  labs(y= "Sub-Region", x = "Total Fertility Rate Per Woman"))

print(ggplot(data_2021, aes(x=life.expectancy.both.sexes, y=subregion)) + 
  geom_boxplot(outlier.colour="red", outlier.shape=1,outlier.size=2)+
  labs(y= "Sub-Region", x = "Life.Expectancy  Of Both Sexes"))

print(ggplot(data_2021, aes(x=life.expectancy.males, y=subregion)) + 
  geom_boxplot(outlier.colour="red", outlier.shape=1,outlier.size=2)+
  labs(y= "Sub-Region", x = "Life.Expectancy Of Males"))

print(ggplot(data_2021, aes(x=life.expectancy.females, y=subregion)) + 
  geom_boxplot(outlier.colour="red", outlier.shape=1,outlier.size=2)+
  labs(y= "Sub-Region", x = "Life.Expectancy at Birth Of Females"))