## This plot is to show histogram of 'Global_active_power'

hist(data_set$Global_active_power, 
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power",
     col = "red")
dev.copy(png, file = "plot1.png")       ## copy the plot to a PNG file
dev.off()       ## close the PNG device
