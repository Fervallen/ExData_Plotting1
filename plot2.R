## Include the loading file
source('load.R')

plot(usageTime, 
  dataset$Global_active_power, 
  type="l", 
  xlab = '', 
  ylab = 'Global active power (kilowatts)'
)

## Save our plot to .png file
dev.copy(png, file = "plot2.png")
dev.off()
