D=read.table('household_power_consumption.txt',header=TRUE,sep=';');
D1=D[D$Date=='1/2/2007' | D$Date=='2/2/2007',];
png('plot2.png');
D1$DateTime=strptime(paste(as.Date(D1$Date,format='%d/%m/%Y'),D1$Time),format='%Y-%m-%d %H:%M:%S');
plot(D1$DateTime,2*as.numeric(D1$Global_active_power)/1000,main='',xlab='',ylab='Global Active Power (kilowatts)',type='l');
dev.off();