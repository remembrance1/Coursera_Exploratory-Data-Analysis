#plot 3, day vs energy sub metering
tpower$Sub_metering_1 <- as.numeric(tpower$Sub_metering_1)
tpower$Sub_metering_2 <- as.numeric(tpower$Sub_metering_2)
tpower$Sub_metering_3 <- as.numeric(tpower$Sub_metering_3)

plot(tpower$dt, tpower$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(tpower$dt, tpower$Sub_metering_2, type = "l", col = "red")
points(tpower$dt, tpower$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
png("plot3.png", width=480, height=480)