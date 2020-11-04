
install.packages("pscl")
library(pscl) 
library(readxl)
library(dplyr) 

TBCollapsed <- read_excel("Logistic Regression.xlsx")


View(TBCollapsed)


data <- TBCollapsed


data$DonationYNfromPhone <- as.numeric(data$DonationYNfromPhone)


colnames(data)[11:12] <-c("ConditionRace0W1L","ConditionGender0M1F")


data$ConditionGender0M1F <- as.factor(data$ConditionGender0M1F)
data$ConditionRace0W1L <- as.factor(data$ConditionRace0W1L)



logistic_interact <- glm(DonationYNfromPhone ~ ConditionGender0M1F + ConditionRace0W1L + 
                           ConditionGender0M1F*ConditionRace0W1L, 
                         data = data, na.action = na.omit, family = binomial)
summary(logistic_interact) 


pR2(logistic_interact) 





exp(coef(logistic_interact))


exp(coef(logistic_interact))/(1+exp(coef(logistic_interact)))


logistic_main <- glm(DonationYNfromPhone ~ ConditionRace0W1L + ConditionGender0M1F, 
                     data = data, na.action = na.omit, family = binomial)
summary(logistic_main) 
pR2(logistic_main) 

xtabs(~ DonationYNfromPhone + ConditionRace0W1L, data=data)

xtabs(~ DonationYNfromPhone + ConditionGender0M1F, data=data)


exp(coef(logistic_main))


exp(coef(logistic_main))/(1+exp(coef(logistic_main)))



anova(logistic_main, logistic_main, test ="Chisq") 
