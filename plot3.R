## Include the loading file
source('load.R')

## Start a plot with default black lines for sub metering 1
plot(usageTime, dataset$Sub_metering_1, type="l", xlab = '', ylab = 'Energy sub metering')

## Add sub meterings 2 and 3 with different colors
lines(usageTime, dataset$Sub_metering_2, col='red')
lines(usageTime, dataset$Sub_metering_3, col='blue')

## Add a nice legend
legend('topright', 
  legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
  col = c('black', 'red', 'blue'), 
  lty = 1
)

## Save our plot to .png file
dev.copy(png, file = "plot3.png")
dev.off()
