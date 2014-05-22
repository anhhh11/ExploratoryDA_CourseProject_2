library("data.table")
library('ggplot2')
#Read data from source
NET_filename <- "summarySCC_PM25.rds"
SCC_filename <- "Source_Classification_Code.rds"
if (!file.exists(NET_filename)) {
  dataUrl  <-  "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
  dataZippedFilename <- "FNEI_data.zip"
  #download.file(dataUrl,method="curl",mode="b",destfile=dataZippedFilename) -- SLOW just manually download by axel
  unzip(zipfile=dataZippedFilename)
}
NET  <- data.table(readRDS(NET_filename)) #Should read first 100 row for testing if possible
SCC <- data.table(readRDS(SCC_filename))

#Observing data column
#flips: US county code
#SCC: source code
#Pollutant: pollutant's index name
#Emissions: amount of index
#type: type of source
#year: recorded year