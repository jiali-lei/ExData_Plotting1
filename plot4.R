## This is to plot four sub line plots 

png(file="plot4.png", width = 480, height = 480, bg = "pink")
par(mfrow=c(2,2))
## 1st subplot - topleft
with(data_set, plot(date_time, Global_active_power, 
                    type="l", 
                    xlab = " ", 
                    ylab = "Global Active Power (kilowatts)"))
## 2nd subplot - topright
with(data_set, plot(date_time, Voltage,
                    type="l",
                    xlab="datetime",
                    ylab="Voltage"))
## 3rd subplot - bottomeleft
with(data_set, plot(date_time, Sub_metering_1, 
                    type="l", 
                    xlab="", 
                    ylab="Energy sub metering", 
                    col="black"))
with(data_set, points(date_time, Sub_metering_2, 
                      type="l", 
                      xlab="", 
                      ylab="Energy sub metering", 
                      col="red"))
with(data_set, points(date_time, Sub_metering_3, 
                      type="l", 
                      xlab="", 
                      ylab="Energy sub metering", 
                      col="blue"))
legend("topright", lty=1, 
       col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       cex=0.75)
## 4th subplot - bottomright
with(data_set, plot(date_time, Global_reactive_power,
                    type="l",
                    xlab="datetime",
                    ylab="Global_reactive_power"))
dev.off()
     
