## Getting full dataset
data <- read.csv("C:/Users/prman_000/Desktop/RProg/ExpData/Project-1/household_power_consumption.txt", sep=";",stringsAsFactors=FALSE, dec=".")

## Subsetting the data
dataf<-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##Plotting
GlobalActivePower<-as.numeric(dataf$Global_active_power)
png("plot1.png",width=480, height=480)
hist(GlobalActivePower,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)",ylim=c(0,1200))
dev.off()



