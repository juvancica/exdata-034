source('exdata-034.R')

plot(dt.power$Global_active_power~dt.power$DateTime, type='l', xlab='', ylab='Global Active Power (kilowatts)')
dev.copy(png, file='plot2.png', width=480, height=480)
dev.off()
