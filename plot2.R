## This is to plot a plot with a smooth line
## between 'date_time' and 'Global_active_power'
## (Note: POSIXct in plot automatically takes care of wday() in axis display)

png(file="plot2.png", width = 480, height = 480, bg = "yellow")
with(data_set, plot(date_time, Global_active_power, 
                    type="l", 
                    xlab = " ", 
                    ylab = "Global Active Power (kilowatts)"))
dev.off()
