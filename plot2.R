source("readdata.R")
# read data and stores in global var dfepc
readDfepc()
# Avoid localiced lables
Sys.setlocale("LC_ALL","C")

#open png  device. 480 ist defailt, but for documentation I make it explicit
png(filename = "plot2.png",   width = 480, height = 480)

#make plot
plot(dfepc$DateTime,dfepc$Global_active_power, type="l" ,ylab='Global Active Power (kilowatts)', xlab="")

#close device
dev.off()
