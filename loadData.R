## Date: April 13th, 2020
## Author: J. Lei

## Course 4 - Exploratory Data Analysis
## Course Project 1 - Graphs, Plotting, and Graphic Devices

## The overall goal is to examing how household energy usage varies over 
## a 2-day period in February, 2007.
## The task is to reconstruct the plots shown in the README.md or the 'figure' folder

## Dataset: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
## Description: Measurements of electric power consumption in one household
## with a one-minute sampling rate over a period of almost 4 years. 
## Different electrical quantities and some sub-metering values are available.

## Part 1 - Loading the data
## set the appropriate directory and download the zip file of data, unzip it.

dataURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(dataURL, 
              destfile = "household_power_consumption.zip", 
              method = "curl")
unzip("household_power_consumption.zip")
file.remove("household_power_consumption.zip")

## since the dataset is 122MB big, it's a better idea to read in a subset
## for 02/01/2007 and 02/02/2007
skip_line <- 36 + 6*60 + 15*24*60 + 31*24*60 + 1
row_line <- 2*24*60
data_set <- read.table("household_power_consumption.txt", 
                       sep = ";", 
                       skip = skip_line, 
                       nrows = row_line, 
                       colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"),
                       col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
## load packages
library(lubridate)
library(dplyr)
## combine 'Date' and 'Time' into a new column of POSIXct
## add a column to show the day of the week
data_set <- data_set %>% 
        mutate(date_time = as.POSIXct(strptime(paste(Date, Time, " "), 
                                         "%d/%m/%Y %T"))) %>%
        mutate(day = wday(date_time, label=TRUE, abbr=TRUE))




