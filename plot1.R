source('exdata-034.R')

hist(dt.power$Global_active_power, main='Global Active Power', xlab='Global Active Power (kilowatts)', col='red')
dev.copy(png, file='plot1.png', width=480, height=480)
dev.off()

