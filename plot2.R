par(mfrow=c(1,1), mar=c(4,4,2,1))

plot(epc$Global_active_power~epc$dateTime, type = "l", 
     ylab = "Global Active Power (kilowatts)")


dev.copy(png,"plot2.png", width=480, height=480)
dev.off()
