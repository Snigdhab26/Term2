library("tidyverse")
library("readxl")
Sample_data <- read_excel("C:\\Users\\SNIGGDHA\\OneDrive\\Desktop\\ISB\\Term 2\\Statistical Analysis 2\\Homework\\DatasetforR.xlsx")
round(cor(Sample_data),
      digits = 2
)
#stepwise function in R
summary(lm1 <- lm(wage ~ ., data = Sample_data))
lm2 <- step(lm1, direction= "backward")
summary(lm2)
#Extracting residuals
resid(lm2)
hist(lm1$residuals)
plot(lm1,1)
resid <- MASS::studres(lm1) #using MASS package function to transform data easily
shapiro.test(sample(resid,200)) # p value non-sign: normal distribution of residuals

