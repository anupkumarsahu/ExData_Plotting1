# Load and clean data

# Reading data file into 
epc = read.table(file.path("data", "household_power_consumption.txt"), 
                 header = TRUE, sep = ';', na.strings = '?', 
                 colClasses = c('character','character','numeric',
                                'numeric','numeric','numeric','numeric',
                                'numeric','numeric'))

# get dimensions of data
dim(epc)

head(epc)

# Get column names
colNames <- names(epc)

# Format date
epc$Date <- as.Date(epc$Date, "%d/%m/%Y")

epc <- subset(epc, Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2") )

dim(epc)


# Combining Date and time into a single column
dateTime <- paste(epc$Date, epc$Time)

dateTime <- setNames(dateTime, "Date_time")

# Remove Date and Time column
epc <- epc[ ,!(names(epc) %in% c("Date","Time"))]

epc <- cbind(epc, dateTime)
epc$dateTime <- as.POSIXct(dateTime)

head(epc)
str(epc)