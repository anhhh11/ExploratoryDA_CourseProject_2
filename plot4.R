source('readData.R')
#Viewing to find suitable column, here is Short.Name
#View(SCC)
#View(NET)
#Filtering coal
coal <- SCC[grep("coal",Short.Name,perl=TRUE,ignore.case=TRUE)]
#Testing whether it correct
View(coal)
#Selecting data
setkey(coal,"SCC")
ques4_data <- data.table(merge(coal,NET,all.x=TRUE))
ques4_plot <- ggplot(ques4_data[!is.na(year)],
                     aes(factor(year),Emissions)) + 
  scale_y_log10() +
  geom_boxplot() +
  xlab("Year")+
  ylab(expression(log(Emissions))) +
  ggtitle("Coal combustion-related sources changed from 1999–2008")
ques4_plot
dev.copy(png,"figure/plot4.png")
dev.off()
