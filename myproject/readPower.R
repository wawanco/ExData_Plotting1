read.power <- function()
{
    bound1 <- as.Date("01/02/2007", format="%d/%m/%Y")
    bound2 <- as.Date("02/02/2007", format="%d/%m/%Y")
    pow <- read.table("household_power_consumption.txt", sep=";", header=TRUE, na.strings="?")
    pow$DateTime <- strptime(paste(pow$Date, pow$Time), format="%d/%m/%Y %H:%M:%S")
    subset(pow, as.Date(DateTime) >= bound1 & as.Date(DateTime) <= bound2, select=-Date:-Time)
}