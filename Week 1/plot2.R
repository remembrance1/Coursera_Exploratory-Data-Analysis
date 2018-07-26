#plot 2, day vs Global active power
plot(tpower$dt, tpower$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
png("plot2.png", width=480, height=480)