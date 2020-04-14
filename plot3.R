## This is to plot a line plot between 'date_time' and 'Sub_metering_#'

png(file="plot3.png", width = 480, height = 480, bg = "transparent")
par(mfrow=c(1,1), mar=c(3,4.1, 2, 2))
with(data_set, plot(date_time, Sub_metering_1, 
                    type="l", xlab="", ylab="Energy sub metering", col="black"))
with(data_set, points(date_time, Sub_metering_2, 
                      type="l", xlab="", ylab="Energy sub metering", col="red"))
with(data_set, points(date_time, Sub_metering_3, 
                      type="l", xlab="", ylab="Energy sub metering", col="blue"))
legend("topright", lty=1, 
       col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       cex=0.75)

dev.off()
