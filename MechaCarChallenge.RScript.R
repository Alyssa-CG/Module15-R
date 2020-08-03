library(tidyverse)

# Mecha Car
# Read the data
MechaCar <- read.csv('mechacar_mpg.csv',check.names = F,stringsAsFactors = F)

# generate multiple linear regression model
# (disable scientific notation in R so that the coefficients remain as simple decimals)
options(scipen = 999)
lm(mpg ~ `vehicle length` + `vehicle weight` + `spoiler angle` + `ground clearance` + AWD,data=MechaCar)

#generate summary statistics
summary(lm(mpg ~ `vehicle length` + `vehicle weight` + `spoiler angle` + `ground clearance` + AWD,data=MechaCar))

# Suspension Coils
# Read the data
SuspensionCoil <- read.csv('suspension_coil.csv',check.names = F,stringsAsFactors = F)

# Generate Summary Statistics
summary(SuspensionCoil$PSI) 
var (SuspensionCoil$PSI) # Variance
sd (SuspensionCoil$PSI) # Standard Deviation

#compare our sample versus population mean of 1500
t.test(SuspensionCoil$PSI,mu=1500)

# Generate extra boxplot for PSI data
# import dataset into ggplot2
plt <- ggplot(SuspensionCoil,aes(x=Manufacturing_Lot,y=PSI, color = Manufacturing_Lot)) 
# plot boxplot
plt + geom_boxplot()



