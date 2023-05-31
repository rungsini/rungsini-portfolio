#############################################
###           Preparing  Data             ###
#############################################
temp <- read.csv('C:/Users/ASUS/Desktop/Dengue/Data/Dengue.csv', header = T,
                 nrows = 2816)

temp <- temp[,1:11]
names(temp)[1] <- c("order")
names(temp)[2] <- c("province")
names(temp)[3] <- c("cases")
names(temp)[4] <- c("year")
names(temp)[5] <- c("month")
names(temp)[6] <- c("avg.temp")
names(temp)[7] <- c("rainfall")
names(temp)[8] <- c("population")
names(temp)[9] <- c("area")
names(temp)[10] <- c("no.hospital")
names(temp)[11] <- c("region")
temp <- temp[-which(temp$rainfall == 9999), ] 
tail(temp)
head(temp)
temp <- temp[, 2:11]
temp

summary(temp)
temp$province <- factor(temp$province) 
# change province to factor
# Province = factor (nominal scale)
levels(temp$province) 
#temp$cases <- as.numeric(temp$cases)
#which(is.na(temp$cases))
# make month to an ordinal factor
temp$month <- factor(temp$month, 
                     levels = unique(temp$month),
                     ordered = T)
# month = factor (ordinal scale)
temp$year <- factor(temp$year, 
                    levels = unique(temp$year),
                    ordered = T)
temp$population <- as.numeric(temp$population)
temp$region <- factor(temp$region, levels = sort(unique(temp$region)))

temp.central <- temp[temp$region == "Central",]
temp.east <- temp[temp$region == "Eastern",]
temp.south <- temp[temp$region == "Southern",]
temp.west <- temp[temp$region == "Western",]
temp.north <- temp[temp$region == "Northern",]
temp.northeast <- temp[temp$region == "Northeastern",]

summary(temp)

cor.test(temp$cases,temp$avg.temp,method="spearman")
cor.test(temp$cases,temp$rainfall,method="spearman")
cor.test(temp$cases,temp$population,method="spearman")
cor.test(temp$cases,temp$area,method="spearman")
cor.test(temp$cases,temp$no.hospital,method="spearman")

######################################
###   Find some useful models      ###
######################################
names(temp)
m0 <- lm(cases ~ year + month + avg.temp +
           rainfall + population +
           area + no.hospital, data = temp.central)

anova(m0)
summary(m0)
temp$year
par(mfrow = c(2,2))
plot(m0)

par(mfrow = c(1,2))
E <- residuals(m0, type = "response")
acf(E)
pacf(E)

par(mfrow = c(1,2))
E <- residuals(m0, type = "working")
acf(E)
pacf(E)
par(mfrow = c(1,1))
plot(temp$province, residuals(m0))  # not sure
plot(temp$year, residuals(m0)) # maybe
plot(temp$month, residuals(m0)) # possible
plot(temp$cases, residuals(m0))
plot(temp$avg.temp, residuals(m0))
plot(temp$rainfall, residuals(m0))
plot(temp$area, residuals(m0))
plot(temp$population, residuals(m0))
plot(temp$no.hospital, residuals(m0))

###################################################
###    Model 2 Using Generalized Least Square   ###
###################################################

#### 1st model Central ##
### lm central ###
lmct <- lm(cases ~ year + month + avg.temp +
           rainfall + population +
           area + no.hospital, data = temp.central)
summary(lmct)
par(mfrow = c(2,2))
plot(lmct)
par(mfrow = c(1,2))
E <- residuals(lmct, type = "response")
acf(E)
pacf(E)
AIC(lmct)
par(mfrow = c(3,3))
plot(predict(lmct), residuals(lmct, "response"), pch = 19)
plot(temp.central$year, residuals(lmct)) 
plot(temp.central$month, residuals(lmct)) 
plot(temp.central$avg.temp, residuals(lmct))
plot(temp.central$rainfall, residuals(lmct))
plot(temp.central$area, residuals(lmct))
plot(temp.central$population, residuals(lmct))
plot(temp.central$no.hospital, residuals(lmct))


lmct.new <- lm(cases ~ year + month + no.hospital, data = temp.central)
summary(lmct.new)
par(mfrow = c(2,2))
plot(lmct.new)
par(mfrow = c(1,2))
E <- residuals(lmct.new, type = "response")
acf(E)
pacf(E)
AIC(lmct.new)

### gls central###
require(nlme)
install.packages("car")
library(car)
install.packages("nlme")
library(nlme)
vf1 <- varConstPower(form =~ population + no.hospital)
cs1 = corARMA(c(0.1,0.1,0.1,0.1),p=2,q=2)
central = gls(sqrt(cases) ~ year + month + avg.temp +
               rainfall + population + I(population^2)+
               area + no.hospital, data = temp.central,
              weights = vf1, correlation = cs1)
leveneTest(residuals(central))
summary(central)
anova(central)
plot(central)
plot(predict(central), residuals(central, "normalized"), pch = 19)
intervals(central)
plot(temp.central$population,residuals(central))
plot(temp.central$no.hospital,residuals(central))
E = residuals(central,type="normalized")
par(mfrow=c(1,2))
acf(E)
pacf(E)
plot(predict(central), sqrt(temp.central$cases), pch = 19)
abline(coef = c(0,1))

##remove variable##
central = gls(sqrt(cases) ~ year + month  +
               area + no.hospital, data = temp.central,
             weights = vf1, correlation = cs1)
summary(central)
anova(central)
plot(central)
plot(predict(central), residuals(central, "normalized"), pch = 19)
intervals(central)
plot(temp.central$population,residuals(central))
plot(temp.central$no.hospital,residuals(central))
E = residuals(central,type="normalized")
par(mfrow=c(1,2))
acf(E)
pacf(E)
plot(predict(central), sqrt(temp.central$cases), pch = 19)
abline(coef = c(0,1))

##histogram##
hist(residuals(central), breaks = 50, xlim = c(-7,5.98))
qqnorm(residuals(central), pch = 19)
qqline(residuals(central))

