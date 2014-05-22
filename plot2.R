source('readData.R')
ques2_data <- NET[fips=="24510",list(total=sum(Emissions)),by="year"]
plot(x=ques2_data$year,y=ques2_data$total,type='b',
     xlab="year",ylab="Emissions(in ton)",
     main="Changing of PM25 emissions in Baltimore City",
     lty=2,
)
with(ques2_data,text(x=year,y=total,labels=round(total,2),pos=4))
dev.copy(png,"figure/plot2.png")
dev.off()
