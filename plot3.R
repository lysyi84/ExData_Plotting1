D=read.table('household_power_consumption.txt',header=TRUE,sep=';');
D1=D[D$Date=='1/2/2007' | D$Date=='2/2/2007',];
png('plot3.png');
D1$DateTime=strptime(paste(as.Date(D1$Date,format='%d/%m/%Y'),D1$Time),format='%Y-%m-%d %H:%M:%S');
plot(D1$DateTime,as.numeric(D1$Sub_metering_1)-min(as.numeric(D1$Sub_metering_1)),main='',xlab='',ylab='Energy sub metering',type='l');
lines(D1$DateTime,as.numeric(D1$Sub_metering_2)-min(as.numeric(D1$Sub_metering_2)),col='Red');
lines(D1$DateTime,as.numeric(D1$Sub_metering_3),col='Blue');
dev.off();