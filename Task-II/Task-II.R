library(dplyr)
library(ggpubr)
data <- read.csv("ImmoDataRuhr.csv")

summary<- data %>%
  group_by(regio2) %>%
  get_summary_stats(sqmPrice,type = "mean_sd")
print(summary)
print(ggboxplot(data, x = "regio2", y = "sqmPrice", color = "regio2", palette = c("#00AFBB", "#E7B800", "#FC4E07","#325ca8"),
          ylab = "sqmPrice", xlab = "Cities"))

anova.result <- aov(sqmPrice ~ regio2, data = data) #Anova Test
print(summary(anova.result))

plot(anova.result,1) #Homogenity of variances assumption Check for anova
plot(anova.result,2) #Normality assumption check for anova