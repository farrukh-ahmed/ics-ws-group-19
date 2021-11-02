data <- read.csv('census_2021_2001.csv')
data_2021 <- data[data$year == '2021',]
data_2001 <- data[data$year == '2001',]


boxplot(data$total.fertility.rate ~ data$year,main = "Total Fertility Rate Comparision Between 2000 and 2020",xlab = "Year", ylab = "Total Fertility Rate")

boxplot(data$life.expectancy.males ~ data$year,main = "Life Expectancy Of Male Comparision Between 2000 and 2020",xlab = "Year", ylab = "Life Expectancy Of Male",ylim=c(40,90))

boxplot(data$life.expectancy.females ~ data$year,main = "Life Expectancy Of Female Comparision Between 2000 and 2020",xlab = "Year", ylab = "Life Expectancy Of Female",ylim=c(40,100))

boxplot(data$life.expectancy.both.sexes ~ data$year,main = "Life Expectancy Of Both Genders Comparision Between 2000 and 2020",xlab = "Year", ylab = "Life Expectancy Of Both Genders",ylim=c(40,100))