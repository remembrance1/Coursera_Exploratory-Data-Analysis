#Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
  coal <- SCC[grep("*coal*|*Coal*",SCC$Short.Name),]#extracting all rows with the word coal within the short.name
  coalSCC <- coal$SCC #extracting the SCC code for comparison
  coalSCC <- as.data.frame(coalSCC)
  colnames(coalSCC) <- "SCC"
  
  coaldata <- merge(NEI, coalSCC, by="SCC")
  totals <- aggregate(Emissions ~ year, coaldata, sum)
  ggplot(totals, aes(x=year, y=Emissions)) + geom_point(aes(colour = factor(year)), size = 4) + geom_line() 
  