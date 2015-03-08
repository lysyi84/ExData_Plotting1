D=read.table('household_power_consumption.txt',header=TRUE,sep=';');
D1=D[D$Date=='1/2/2007' | D$Date=='2/2/2007',];
D1$DateTime=strptime(paste(as.Date(D1$Date,format='%d/%m/%Y'),D1$Time),format='%Y-%m-%d %H:%M:%S');

png('plot4.png');
par(mfrow=c(2, 2));
plot(D1$DateTime,as.numeric(as.character(D1$Global_active_power)),main='',xlab='',ylab='Global Active Power',type='l');
plot(D1$DateTime,as.numeric(as.character(D1$Voltage)),main='',xlab='datetime',ylab='Voltage',type='l');
plot(D1$DateTime,as.numeric(as.character(D1$Sub_metering_1)),main='',xlab='',ylab='Energy sub metering',type='l');
lines(D1$DateTime,as.numeric(as.character(D1$Sub_metering_2)),col='Red');
lines(D1$DateTime,as.numeric(as.character(D1$Sub_metering_3)),col='Blue');
plot(D1$DateTime,as.numeric(as.character(D1$Global_reactive_power)),main='',xlab='datetime',ylab='Global_reactive_power',type='l');
dev.off();
