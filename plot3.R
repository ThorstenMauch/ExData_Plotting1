source("readdata.R")
# read data and stores in global var dfepc
readDfepc()
# Avoid localiced lables
Sys.setlocale("LC_ALL","C")

#open png  device. 480 ist defailt, but for documentation I make it explicit
png(filename = "plot3.png",   width = 480, height = 480)

#make plot
plot(dfepc$DateTime,dfepc$Sub_metering_1, type="l", col="black", ylab='Energie sub metering', xlab="")
lines(dfepc$DateTime, dfepc$Sub_metering_2,type="l", col="red")
lines(dfepc$DateTime, dfepc$Sub_metering_3,type="l",col="blue")
legend('topright', names(dfepc)[7:9], col=c('black','red', 'blue' ) ,  lty=1)

#close device

dev.off()
