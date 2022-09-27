wd<-getwd()
filename<-"household_power_consumption.txt"
# hpc<-read.delim(filename,header=TRUE,sep=";",dec=".")
hpc1<-subset(hpc,hpc$Date=="1/2/2007"|hpc$Date=="2/2/2007")
png(file="plot1.png",width=480, height=480)
hist(as.numeric(as.character(hpc1$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
