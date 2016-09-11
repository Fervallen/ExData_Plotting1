## Downdload zipped source
if (!file.exists('data.zip')) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 'data.zip')
}

## Unzip it
if (!file.exists('household_power_consumption.txt')) {
  unzip('data.zip')  
}

## Load need part of the source
library(sqldf)
dataset <- read.csv.sql('household_power_consumption.txt', sep=";", sql = 'select * from file where Date = "1/2/2007" or Date = "2/2/2007"')

## We need time variable at 3 of 4 graphics, so i've moved it here
usageTime <- strptime(paste(dataset$Date, dataset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
