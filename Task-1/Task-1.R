library(ggplot2)
#data <- read.csv(file.choose())
data <- read.csv('~/Personal Folder/Third Semester/ICS/Winter Semester/Task-1/census_2021_2001.csv')

data_2021 <- data[data$year == '2021',]
data_2001 <- data[data$year == '2001',]

print(transform(table(data_2021$region,dnn = "Region")))

print(transform(table(data_2021$subregion,dnn = "Sub-Region")))


fertility_breaks <-  seq(1.0, 8.0, by=1)

print(transform(table(cut(data_2021$total.fertility.rate,fertility_breaks),dnn = "Total Fertility Rate")))

life_expectancy_breaks = seq(50.0,95.0, by=5) 

print(transform(table(cut(data_2021$life.expectancy.males,life_expectancy_breaks),dnn = "Life Expectancy Of Male Genders")))

print(transform(table(cut(data_2021$life.expectancy.females,life_expectancy_breaks),dnn = "Life Expectancy Of Female Genders")))

print(transform(table(cut(data_2021$life.expectancy.both.sexes,life_expectancy_breaks),dnn = "Life Expectancy Of Both Genders")))

print(hist(data_2021$life.expectancy.males,breaks = life_expectancy_breaks,main = "Life Expectancy Of Males",xlab = "Life Expectancy Of Males"))

print(hist(data_2021$life.expectancy.females,breaks = life_expectancy_breaks,main = "Life Expectancy Of Females",xlab = "Life Expectancy Of Females"))

print(hist(data_2021$life.expectancy.both.sexes,breaks = life_expectancy_breaks,main = "Life Expectancy Of Both Genders",xlab = "Life Expectancy Of Both Genders"))


print(hist(data_2021$total.fertility.rate,breaks = fertility_breaks,main = "Total Fertility Rate",xlab = "Total Fertility Rate"))


print(ggplot(data.frame(data_2021$region), aes(x=data_2021$region)) + geom_bar() +labs(y= "Frequency", x = "Regions"))

print(plot(data_2021$life.expectancy.males,data_2021$total.fertility.rate,xlab="Life Expectancy Of Males",ylab="Total Fertility Rate"))

print(plot(data_2021$life.expectancy.females,data_2021$total.fertility.rate,xlab="Life Expectancy Of Females",ylab="Total Fertility Rate"))

