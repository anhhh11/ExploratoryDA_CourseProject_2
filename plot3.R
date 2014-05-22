source('readData.R')
ques3_data <- NET[fips=="24510",list(total=sum(Emissions)),by="type,year"]
#with(subset(ques3_data,type=="POINT"),plot(year,total,type='l')) -- test for correcting plot
ques3_plot  <- ggplot(ques3_data,aes(x=year,y=total,color=type)) + 
  geom_line(linetype='solid') +
  geom_point()
#decorating
ques3_plot   <- ques3_plot + labs(title="Baltimore City's PM25 in 1999-2008 by type of source")
ques3_plot <- ques3_plot + scale_x_continuous(breaks=c(1999,2002,2005,2008))
ques3_plot
dev.copy(png,"figure/plot3.png")
dev.off()
