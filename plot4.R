source('exdata-034.R')

par(mfrow=c(2,2))

# Plot 1
plot(dt.power$Global_active_power~dt.power$DateTime, type='l', xlab='', ylab='Global Active Power (kilowatts)')

# Plot 2
plot(dt.power$Voltage~dt.power$DateTime, type='l', xlab='datetime', ylab='Voltage')

# Plot 3
plot(dt.power$Sub_metering_1~dt.power$DateTime, type='l', xlab='', ylab='Global Active Power (kilowatts)')
lines(dt.power$Sub_metering_2~dt.power$DateTime, col='red')
lines(dt.power$Sub_metering_3~dt.power$DateTime, col='blue')
legend('topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col=c('black','red','blue'), bty='n', lwd=c(1,1), cex=0.5)

#Plot 4
plot(dt.power$Global_reactive_power~dt.power$DateTime, type='l', xlab='', ylab='Global_reactive_power')

dev.copy(png, file='plot4.png', width=480, height=480)
dev.off()
