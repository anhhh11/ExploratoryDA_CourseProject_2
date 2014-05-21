library("data.table")
library("lubridate")
#Read data from source
dataFilename <- "summarySCC_PM25.rds"
if (!file.exists(dataFilename)) {
  dataUrl  <-  "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
  dataZippedFilename <- "FNEI_data.zip"
  #download.file(dataUrl,method="curl",mode="b",destfile=dataZippedFilename) -- SLOW just manually download
  unzip(zipfile=dataZippedFilename)
}
data  <- readRDS(dataFilename)
