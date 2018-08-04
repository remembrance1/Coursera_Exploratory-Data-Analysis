#Have total emissions from PM2.5 decreased in the Baltimore City, 
#Maryland (fips == "24510"\color{red}{\verb|fips == "24510"|}fips=="24510") from 1999 to 2008?
NEIsub <- subset(NEI, fips == "24510") #baltimore
totals1 <- aggregate(Emissions ~ year, NEIsub, sum) #summing emissions by SCC and year
barplot(totals1$Emissions, ylab = "PM2.5 Emissions", xlab = "Year", names = totals1$year, 
        main = "PM2.5 Emission Totals (Baltimore City)")