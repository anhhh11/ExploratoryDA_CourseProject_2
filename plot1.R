source('readData.R')
#Q1: Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
#Using the base plotting system, make a plot showing the total PM2.5 emission 
#from all sources for each of the years 1999, 2002, 2005, and 2008.

#data.frame[<where>,<select>,by=<group by>]
ques1_data <- NET[,list(total=sum(Emissions)),by="year"]
plot(x=ques1_data$year,y=ques1_data$total,
     xlab="year",ylab="Emissions(in ton)",
     main="Changing of PM25 emissions in US",
     lty=2,type="b") # Should try to plot 1000 line first 
with(ques1_data,text(x=year,y=total,labels=round(total,2),pos=4))
dev.copy(png,"figure/plot1.png")
dev.off()
