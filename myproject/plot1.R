plot1 <- function()
{
    source("readPower.R")
    pow <- read.power()
    png(file = "plot1.png")
    with(pow, hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))
    dev.off()
    "Plot 1 created successfully in plot1.png file."
}