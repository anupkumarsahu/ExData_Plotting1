par(mfrow=c(1,1), mar=c(4,4,2,1))

with(epc, {
  plot(Sub_metering_1~dateTime, ylab="Global Active Power (kilowatts)", 
       type = "l")
  lines(Sub_metering_2~dateTime,col='Red')
  lines(Sub_metering_3~dateTime,col='blue')

  legend("topright", col=c("black", "red", "blue"), lwd=c(1,1,1), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})

dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
