source('readData.R')
ques6_data <- NET[(fips == "24510" | fips == "06037") 
                  & type == "ON-ROAD",list(year,fips,total=sum(Emissions)),by="fips,year"]
ques6_plot <- ggplot(data=ques6_data,aes(x=year,y=total,color=fips)) + 
  scale_color_hue(labels=c("Baltimore","Los Angeles")) +
  geom_line()+
  ggtitle("Comparation changes over time between 2 counties")
ques6_plot
dev.copy(png,"figure/plot6.png")
dev.off()
