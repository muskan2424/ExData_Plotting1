
R version 4.0.0 (2020-04-24) -- "Arbor Day"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
> data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
> data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
> datetime <- paste(as.Date(data1$Date), data1$Time)
> data1$Datetime <- as.POSIXct(datetime)
> 
> ## Plot 2
> with(data1, {
+   plot(Global_active_power~Datetime, type="l",
+      ylab="Global Active Power (kilowatts)", xlab="")
+   })
> 
