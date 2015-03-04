plot4 <- function()
{
    source("readPower.R")
    pow <- read.power()
    png(file = "plot4.png")
    par(mfrow=c(2,2))
    with(pow, {
        plot(DateTime, Global_active_power, type="l", xlab=NA, ylab="Global Active Power")
        plot(DateTime, Voltage, type="l")
        plot(DateTime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=NA)
        lines(DateTime, Sub_metering_2, col=2)
        lines(DateTime, Sub_metering_3, col=4)
        legend("topright", lty=1, bty="n", col=c("black","red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        plot(DateTime, Global_reactive_power, type="l")
    })
    dev.off()
    "Plot 4 created successfully in plot4.png file."
}