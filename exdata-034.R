library(data.table)
library(dplyr)
library(tidyr)
library(lubridate)

url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
tmp <- tempfile()
download.file(url,tmp,mode='wb')
con <- unzip(tmp,'household_power_consumption.txt',overwrite=TRUE)
startData <- fread(con,na.strings='?')
unlink(tmp)

dt.power <- startData %>% filter(Date=='1/2/2007' | Date=='2/2/2007') %>% mutate(DateTime=dmy(Date)+hms(Time))

rm('startData')

print('Load completed to dt.power!')