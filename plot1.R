hpc_data <- file("household_power_consumption.txt")

hpc_data_2days <- read.table(text = grep("^[1,2]/2/2007", 
                  readLines(hpc_data), 
                  value = TRUE), 
        col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", 
"Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
        sep = ";", 
        header = TRUE)

# Generating Plot 1

hist(hpc_data_2days$Global_active_power, col = "red", main = paste("Global Active Power"), 
xlab = "Global Active Power (kilowatts)")

## Save as PNG file with a width of 480 pixels and a height of 480 pixels.
## and close device

dev.copy(png,"plot1.png", width=480, height=480)
dev.off()