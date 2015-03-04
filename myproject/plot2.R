plot2 <- function()
{
    source("readPower.R")
    pow <- read.power()
    png(file = "plot2.png")
    with(pow, plot(DateTime, Global_active_power, type="l", xlab=NA, ylab="Global Active Power (kilowatts)"))
    dev.off()
    "Plot 2 created successfully in plot2.png file."
}