#load dataset
library(naniar)
library(ggplot2)
tpower <- read.table("household_power_consumption.txt", sep=";", header=T, stringsAsFactors = F)

#transformation of date/time features
tpower$dt <- strptime(paste(tpower$Date, tpower$Time), "%d/%m/%Y %H:%M:%S") #get datetime
tpower$Date <- as.Date(tpower$Date, "%d/%m/%Y") #change date format

#subset required date period for coursera assignment
tpower <- subset(tpower, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))

#plot 1, Global active power vs frequency
ggplot(tpower, aes(x=Global_active_power)) + geom_histogram(binwidth = 400) + scale_x_continuous(limits = c(0,6))
tpower$Global_active_power <- as.numeric(tpower$Global_active_power)

hist(tpower$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency", 
     main = "Global Active Power")
png("plot1.png", width=480, height=480)
