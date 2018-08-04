#How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
vehicle <- SCC[grep("*vehicle*|*Vehicle*", SCC$Short.Name),]
vehicleSCC <- vehicle$SCC

#extracting motor vehicles in baltimore city only
veh_balt <- NEIsub[NEIsub$SCC %in% vehicleSCC,] #extracting similar entries of vehicleSCC INSIDE NEIsub$SCC, and extracting those rows from NEIsub
agg_veh_balt <- aggregate(Emissions ~ year, veh_balt, mean)

ggplot(agg_veh_balt, aes(x=year, y=Emissions)) + geom_point(aes(colour = factor(year)), size = 4) + geom_line() 