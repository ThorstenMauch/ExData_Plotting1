source("readdata.R")
# read data and stores in global var dfepc
readDfepc()
# Avoid localiced lables
Sys.setlocale("LC_ALL","C")

#open png  device. 480 ist defailt, but for documentation I make it explicit
png(filename = "plot1.png",   width = 480, height = 480)

#make plot
hist(dfepc$Global_active_power, col="red", main='Global Active Power',xlab='Global Active Power (kilowatts)')

#close device
dev.off()
