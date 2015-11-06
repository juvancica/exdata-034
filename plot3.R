source('exdata-034.R')

plot(dt.power$Sub_metering_1~dt.power$DateTime, type='l', xlab='', ylab='Global Active Power (kilowatts)')
lines(dt.power$Sub_metering_2~dt.power$DateTime, col='red')
lines(dt.power$Sub_metering_3~dt.power$DateTime, col='blue')
legend('topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col=c('black','red','blue'), bty='o', lwd=2, cex=0.8)
dev.copy(png, file='plot3.png', width=480, height=480)
dev.off()
