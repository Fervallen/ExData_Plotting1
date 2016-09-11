## Include the loading file
source('load.R')

## Set that we need a 2x2 table of plots 
par(mfrow = c(2,2))

## Generate "Global active power" plot from plot1.R 
plot(usageTime, dataset$Global_active_power, type="l", xlab = '', ylab = 'Global active power (kilowatts)')

## Generate "Voltage" plot
plot(usageTime, dataset$Voltage, type="l", xlab = 'datetime', ylab = 'Voltage')

## Generate "Sub metering" plot from plot3.R
plot(usageTime, dataset$Sub_metering_1, type="l", xlab = '', ylab = 'Energy sub metering')
lines(usageTime, dataset$Sub_metering_2, col='red')
lines(usageTime, dataset$Sub_metering_3, col='blue')
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty = 1)

## Generate "Global reactive power" plot from plot1.R 
plot(usageTime, dataset$Global_reactive_power, type="l", xlab = 'datetime', ylab = 'Global_reactive_power')


## Save our plot to .png file
dev.copy(png, file = "plot4.png")
dev.off()
