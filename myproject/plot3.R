plot3 <- function()
{
    source("readPower.R")
    pow <- read.power()
    png(file = "plot3.png")
    with(pow, plot(DateTime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=NA))
    with(pow, lines(DateTime, Sub_metering_2, col=2))
    with(pow, lines(DateTime, Sub_metering_3, col=4))
    legend("topright", lty=1,col=c("black","red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    dev.off()
    "Plot 3 created successfully in plot3.png file."
}