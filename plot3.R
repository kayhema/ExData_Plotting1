## Getting full dataset
data <- read.csv("C:/Users/prman_000/Desktop/RProg/ExpData/Project-1/household_power_consumption.txt", sep=";",stringsAsFactors=FALSE, dec=".")

## Subsetting the data
dataf<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Converting dates
datetime <- strptime(paste(dataf$Date, dataf$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

##Plotting 
Sub_metering_1<-as.numeric(dataf$Sub_metering_1)
Sub_metering_2<-as.numeric(dataf$Sub_metering_2)
Sub_metering_3<-as.numeric(dataf$Sub_metering_3)

png("plot3.png",width=480, height=480)
plot(datetime,Sub_metering_1,type="l",xlab=" ",ylab="Energy sub metering")
lines(datetime,Sub_metering_2,type="l",col="red")
lines(datetime,Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,lwd=2.5)
dev.off()
