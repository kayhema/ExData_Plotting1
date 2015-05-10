## Getting full dataset
data <- read.csv("C:/Users/prman_000/Desktop/RProg/ExpData/Project-1/household_power_consumption.txt", sep=";",stringsAsFactors=FALSE, dec=".")

## Subsetting the data
dataf<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

## Converting dates
datetime <- strptime(paste(dataf$Date, dataf$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

##changing data class 
GlobalActivePower<-as.numeric(dataf$Global_active_power)
Global_reactive_power<-as.numeric(dataf$Global_reactive_power)
Voltage<-as.numeric(dataf$Voltage)
Sub_metering_1<-as.numeric(dataf$Sub_metering_1)
Sub_metering_2<-as.numeric(dataf$Sub_metering_2)
Sub_metering_3<-as.numeric(dataf$Sub_metering_3)

##Plotting four plots in one Frame
png("plot4.png",width=480, height=480)
par(mfrow=c(2,2))

##Plotting First plot
plot(datetime,GlobalActivePower,type="l",xlab=" ",ylab="Global Active Power (kilowatts)")
##Ploting second plot
plot(datetime,Voltage,type="l",xlab="datetime",ylab="Voltage")
##Plotting third plot
plot(datetime,Sub_metering_1,type="l",xlab=" ",ylab="Energy sub metering")
lines(datetime,Sub_metering_2,type="l",col="red")
lines(datetime,Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1,lwd=2.5,bty="n")
##Plotting fourth plot
plot(datetime,Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()
