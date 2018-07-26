#plot 4, multiplot

par(mfrow=c(2,2))
par(mar=c(4,4,4,4))

plot(tpower$dt, tpower$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
plot(tpower$dt, tpower$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(tpower$dt, tpower$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(tpower$dt, tpower$Sub_metering_2, type = "l", col = "red")
points(tpower$dt, tpower$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", cex = 0.8)

plot(tpower$dt, tpower$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
png("plot4.png", width=480, height=480)