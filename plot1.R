par(mfrow=c(1,1), mar=c(4,4,2,1))

hist(epc$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")


dev.copy(png,"plot1.png", width=480, height=480)
dev.off()

