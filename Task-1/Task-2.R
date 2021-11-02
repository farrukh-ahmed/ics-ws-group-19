library(ggplot2)
library(ggpubr)


data <- read.csv('census_2021_2001.csv')
data_2021 <- data[data$year == '2021',]
data_2001 <- data[data$year == '2001',]



print(ggscatter(data_2021, x = "life.expectancy.males", y = "total.fertility.rate",
          add = "reg.line", conf.int = TRUE,
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Life Expectancy Of Males", ylab = "Total Fertility Rate"))

print(ggscatter(data_2021, x = "life.expectancy.females", y = "total.fertility.rate",
          add = "reg.line", conf.int = TRUE,
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Life Expectancy Of Females", ylab = "Total Fertility Rate"))

print(ggscatter(data_2021, x = "life.expectancy.both.sexes", y = "total.fertility.rate",
          add = "reg.line", conf.int = TRUE,
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Life Expectancy Of Both Sexes", ylab = "Total Fertility Rate"))



correlation_LFMale_And_Fertility <- cor.test(data_2021$life.expectancy.males, data_2021$total.fertility.rate,
                                             method = "pearson")
print(correlation_LFMale_And_Fertility)

correlation_LFFemale_And_Fertility <- cor.test(data_2021$life.expectancy.females, data_2021$total.fertility.rate,
                                               method = "pearson")
print(correlation_LFFemale_And_Fertility)

correlation_LFBothSexes_And_Fertility <- cor.test(data_2021$life.expectancy.both.sexes, data_2021$total.fertility.rate,
                                                  method = "pearson")
print(correlation_LFBothSexes_And_Fertility)

