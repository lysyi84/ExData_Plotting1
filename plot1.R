D=read.table('household_power_consumption.txt',header=TRUE,sep=';');
D1=D[D$Date=='1/2/2007' | D$Date=='2/2/2007',];
png('plot1.png');
hist(2*as.numeric(D1$Global_active_power)/1000,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='Orange');
dev.off();
