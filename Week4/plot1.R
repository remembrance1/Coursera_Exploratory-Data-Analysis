#make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008
NEI$SCC <- as.factor(NEI$SCC)
totals <- aggregate(Emissions ~ year,NEI, sum) #summing emissions by SCC and year

barplot(totals$Emissions, ylab = "PM2.5 Emissions", xlab = "Year", names.arg = totals$year, main = "PM2.5 Emission Totals")