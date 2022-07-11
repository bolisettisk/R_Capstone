library(tidyverse)
library(dplyr)
library(dslabs)
library(lubridate)

data = read_csv("melb_data.csv")

head(data,20)

names(data)

cat("\014")

str(data$Postcode)

dat <- data["Rooms"]

dat <- data %>% select(Price, Date, Postcode, Bedroom2, Bathroom, Car, Landsize, BuildingArea, YearBuilt, Lattitude, Longtitude)


dat <- dat %>% filter(!is.na(BuildingArea))
head(dat)
dat$Postcode <- as.factor(dat$Postcode)
str(dat$Postcode)
dat$Date <- dmy(dat$Date)


