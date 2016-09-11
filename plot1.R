## Include the loading file
source('load.R')

hist(dataset$Global_active_power, 
     col='red', 
     main='Global Active Power', 
     xlab = 'Global active power (kilowatts)',
     ylab = 'Frequency'
)

## Save our plot to .png file
dev.copy(png, file = "plot1.png")
dev.off()
