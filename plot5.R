source('readData.R')
ques5_data <- NET[fips == "24510" & type == "ON-ROAD",list(year,total=sum(Emissions)),by=year]
ques5_plot <- ggplot(data=ques5_data,aes(x=factor(year),y=total,group='')) + 
  geom_line(color="blue") +
  xlab("year") + ylab("Emissions(ton)") + ggtitle("Baltimore City's emission 1999-2008")
ques5_plot
dev.copy(png,"figure/plot5.png")
dev.off()
