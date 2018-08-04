#Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, 
#California (fips == "06037"\color{red}{\verb|fips == "06037"|}fips=="06037"). 
#Which city has seen greater changes over time in motor vehicle emissions?

NEIsubLA <- subset(NEI, fips == "06037") #LA
veh_LA <- NEIsubLA[NEIsubLA$SCC %in% vehicleSCC,] #extracting similar entries of vehicleSCC INSIDE NEIsub$SCC, and extracting those rows from NEIsub
agg_veh_LA <- aggregate(Emissions ~ year, veh_LA, mean)
agg_veh_LA$City <- rep("LA", 4) #adding LA to new col city
agg_veh_balt$City <- "Balt" #same as above but using different method

complabalt <- rbind(agg_veh_balt, agg_veh_LA) #combine 2 dataframes

ggplot(complabalt, aes(x=year, y=Emissions)) + 
  geom_point(aes(colour = City), size = 4) + 
  geom_line(aes(colour = City), size = 1) 
