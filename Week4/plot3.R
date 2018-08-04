#Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) 
#variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City?

totals <- aggregate(Emissions ~ type + year, NEIsub, sum) #summing emissions by SCC and year
ggplot(totals, aes(year, Emissions)) + geom_point(aes(colour = factor(type)), size = 4) + geom_line(aes(group = type, colour = type),size = 1)
