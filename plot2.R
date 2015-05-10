## Getting full dataset
data <- read.csv("C:/Users/prman_000/Desktop/RProg/ExpData/Project-1/household_power_consumption.txt", sep=";",stringsAsFactors=FALSE, dec=".")

## Subsetting the data
dataf<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]


## Converting dates
datetime <- strptime(paste(dataf$Date, dataf$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

##Plotting
GlobalActivePower<-as.numeric(dataf$Global_active_power)
png("plot2.png",width=480, height=480)
plot(datetime,GlobalActivePower,type="l",xlab=" ",ylab="Global Active Power (kilowatts)")

dev.off()
