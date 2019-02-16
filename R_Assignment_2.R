MyData <- read.csv(file="C:\\R_WorkSpace\\acme.csv",header=TRUE, sep=",")
MyData

summary.data.frame(MyData)
mean(MyData$acme,trim=0,na.rm=TRUE)
mean(MyData$market,trim=0,na.rm=TRUE)

MySubSetData <- subset.data.frame(MyData,market >0 & acme >0, select=c(month,market,acme))
MySubSetData
colnames(MySubSetData) <- c("Month/Year","Market","ACME")
summary.data.frame(MySubSetData)

mean(MySubSetData$Market,trim=0,na.rm=TRUE)
mean(MySubSetData$ACME,trim=0,na.rm=TRUE)

if (mean(MyData$acme,trim=0,na.rm=TRUE) > mean(MySubSetData$ACME,trim=0,na.rm=TRUE)) {
  compareResults <- ("Mean of acme values in dataframe MyData is greater than the mean value for ACME in MySubSetData")
}else if (mean(MyData$acme,trim=0,na.rm=TRUE) < mean(MySubSetData$ACME,trim=0,na.rm=TRUE)){
  compareResults <- ("Mean of ACME values in dataframe MySubSetData is greater than the mean value for acme in MyData")
}else {
  compareResults <- ("Mean of acme values in dataframe MyData is equal to the mean value for ACME in MySubSetData")
}
compareResults


#----------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------

gasolineData <- read.csv(file="C:\\R_WorkSpace\\gasoline.csv",header=TRUE, sep=",")
gasolineData

summary.data.frame(gasolineData)
gasolineYearMean <- mean(gasolineData$year,trim=0,na.rm=TRUE)
gasolineYearMean
gasolineLGASPCARMean <- mean(gasolineData$lgaspcar,trim=0,na.rm=TRUE)
gasolineLGASPCARMean
gasolineYearMedian <- median(gasolineData$year,na.rm = TRUE)
gasolineYearMedian
gasolineLGASPCARMedian <- median(gasolineData$lgaspcar,na.rm=TRUE)
gasolineLGASPCARMedian

gasolineSubSetData <- subset.data.frame(gasolineData,year > 1960 & year < 1970, select=c(country,year,lgaspcar))
gasolineSubSetData
colnames(gasolineSubSetData) <- c("COUNTRY_NAME","YEAR","LGASPCAR")
summary.data.frame(gasolineSubSetData)

gasolineSubsetYearMean <- mean(gasolineSubSetData$YEAR,trim=0,na.rm=TRUE)
gasolineSubsetYearMean
gasolineSubsetLGASPCARMean <- mean(gasolineSubSetData$LGASPCAR,trim=0,na.rm=TRUE)
gasolineSubsetLGASPCARMean
gasolineSubsetYearMedian <- median(gasolineSubSetData$YEAR,na.rm = TRUE)
gasolineSubsetYearMedian
gasolineSubsetLGASPCARMedian <- median(gasolineSubSetData$LGASPCAR,na.rm = TRUE)
gasolineSubsetLGASPCARMedian

if (gasolineYearMean > gasolineSubsetYearMean) {
  compareYearMean <- "Mean of year values in dataframe gasolineData"
  compareYearMean <- paste(compareYearMean,gasolineYearMean,sep = " - ")
  compareYearMean <- paste(compareYearMean," is greater than the mean value for YEAR from gasolineSubSetData", sep=" ")
  compareYearMean <- paste(compareYearMean, gasolineSubsetYearMean, sep = " - ")
}else if (gasolineYearMean < gasolineSubsetYearMean){
  compareYearMean <- "Mean of year values in dataframe gasolineData"
  compareYearMean <- paste(compareYearMean,gasolineYearMean,sep = " - ")
  compareYearMean <- paste(compareYearMean," is lesser than the mean value for YEAR from gasolineSubSetData", sep=" ")
  compareYearMean <- paste(compareYearMean, gasolineSubsetYearMean, sep = " - ")
}else {
  compareYearMean <- "Mean of year values in dataframe gasolineData"
  compareYearMean <- paste(compareYearMean,gasolineYearMean,sep = " - ")
  compareYearMean <- paste(compareYearMean," is equal to the mean value for YEAR from gasolineSubSetData", sep=" ")
  compareYearMean <- paste(compareYearMean, gasolineSubsetYearMean, sep = " - ")
}
compareYearMean


if (gasolineYearMedian > gasolineSubsetYearMedian) {
  compareYearMedian <- "Median of year values in dataframe gasolineData"
  compareYearMedian <- paste(compareYearMedian,gasolineYearMedian,sep = " - ")
  compareYearMedian <- paste(compareYearMedian," is greater than the mean value for YEAR from gasolineSubSetData", sep=" ")
  compareYearMedian <- paste(compareYearMedian, gasolineSubsetYearMedian, sep = " - ")
}else if (gasolineYearMedian < gasolineSubsetYearMedian){
  compareYearMedian <- "Median of year values in dataframe gasolineData"
  compareYearMedian <- paste(compareYearMedian,gasolineYearMedian,sep = " - ")
  compareYearMedian <- paste(compareYearMedian," is lesser than the mean value for YEAR from gasolineSubSetData", sep=" ")
  compareYearMedian <- paste(compareYearMedian, gasolineSubsetYearMedian, sep = " - ")
}else {
  compareYearMedian <- "Mean of year values in dataframe gasolineData"
  compareYearMedian <- paste(compareYearMedian,gasolineYearMedian,sep = " - ")
  compareYearMedian <- paste(compareYearMedian," is equal to the mean value for YEAR from gasolineSubSetData", sep=" ")
  compareYearMedian <- paste(compareYearMedian, gasolineSubsetYearMedian, sep = " - ")
}
compareYearMedian



if (gasolineLGASPCARMean > gasolineSubsetLGASPCARMean) {
  compareLGASPCARMean <- "Mean of lgaspcar values in dataframe gasolineData"
  compareLGASPCARMean <- paste(compareLGASPCARMean,gasolineLGASPCARMean,sep = " - ")
  compareLGASPCARMean <- paste(compareLGASPCARMean," is greater than the mean value for LGASPCAR from gasolineSubSetData", sep=" ")
  compareLGASPCARMean <- paste(compareLGASPCARMean, gasolineSubsetLGASPCARMean, sep = " - ")
}else if (gasolineLGASPCARMean < gasolineSubsetLGASPCARMean){
  compareLGASPCARMean <- "Mean of lgaspcar values in dataframe gasolineData"
  compareLGASPCARMean <- paste(compareLGASPCARMean,gasolineLGASPCARMean,sep = " - ")
  compareLGASPCARMean <- paste(compareLGASPCARMean," is lesser than the mean value for LGASPCAR from gasolineSubSetData", sep=" ")
  compareLGASPCARMean <- paste(compareLGASPCARMean, gasolineSubsetLGASPCARMean, sep = " - ")
}else {
  compareLGASPCARMean <- "Mean of lgaspcar values in dataframe gasolineData"
  compareLGASPCARMean <- paste(compareLGASPCARMean,gasolineLGASPCARMean,sep = " - ")
  compareLGASPCARMean <- paste(compareLGASPCARMean," is equal to the mean value for LGASPCAR from gasolineSubSetData", sep=" ")
  compareLGASPCARMean <- paste(compareLGASPCARMean, gasolineSubsetLGASPCARMean, sep = " - ")
}
compareLGASPCARMean


if (gasolineLGASPCARMedian > gasolineSubsetLGASPCARMedian) {
  compareLGASPCARMedian <- "Median of lgaspcar values in dataframe gasolineData"
  compareLGASPCARMedian <- paste(compareLGASPCARMedian,gasolineLGASPCARMedian,sep = " - ")
  compareLGASPCARMedian <- paste(compareLGASPCARMedian," is greater than the mean value for YEAR from gasolineSubSetData", sep=" ")
  compareYearMedian <- paste(compareYearMedian, gasolineSubsetLGASPCARMedian, sep = " - ")
}else if (gasolineLGASPCARMedian < gasolineSubsetLGASPCARMedian){
  compareLGASPCARMedian <- "Median of year values in dataframe gasolineData"
  compareLGASPCARMedian <- paste(compareLGASPCARMedian,gasolineLGASPCARMedian,sep = " - ")
  compareLGASPCARMedian <- paste(compareLGASPCARMedian," is lesser than the mean value for YEAR from gasolineSubSetData", sep=" ")
  compareLGASPCARMedian <- paste(compareLGASPCARMedian, gasolineSubsetLGASPCARMedian, sep = " - ")
}else {
  compareLGASPCARMedian <- "Mean of year values in dataframe gasolineData"
  compareLGASPCARMedian <- paste(compareLGASPCARMedian,gasolineLGASPCARMedian,sep = " - ")
  compareLGASPCARMedian <- paste(compareLGASPCARMedian," is equal to the mean value for YEAR from gasolineSubSetData", sep=" ")
  compareLGASPCARMedian <- paste(compareLGASPCARMedian, gasolineSubsetLGASPCARMedian, sep = " - ")
}
compareLGASPCARMedian

gasolineSubSetData$COUNTRY_NAME <- as.character(gasolineSubSetData$COUNTRY_NAME)
gasolineSubSetData$COUNTRY_NAME[gasolineSubSetData$COUNTRY_NAME == "U.S.A."] <- "United States Of America"
gasolineSubSetData$COUNTRY_NAME[gasolineSubSetData$COUNTRY_NAME == "U.K."] <- "United Kingdom"

gasolineSubSetData[(length(gasolineSubSetData$COUNTRY_NAME)-20):length(gasolineSubSetData$COUNTRY_NAME),]

library(readr)
require(RCurl)

require(RCurl)

gasolineFromGitHub <-read.csv(text=getURL("https://raw.githubusercontent.com/samsri01/Repo-For-CSV-File-Storage/master/gasoline.csv"),header=TRUE)
gasolineFromGitHub


