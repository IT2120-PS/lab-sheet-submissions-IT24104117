setwd("C:\\Users\\it24104117\\Desktop\\IT24104117")
#Q1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Times)

#Q2

breaks <- seq(20, 70, length.out = 10)
hist(Delivery_Times$Delivery_Time,
     breaks = breaks,
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     col = "orange",
     border = "black")

#Q3
breaks <- seq(20, 70, length.out = 10)
hist_data <- hist(Delivery_Times$Delivery_Time,
                  breaks = breaks,
                  right = FALSE,
                  plot = FALSE)
#Q4
cum_freq <- cumsum(hist_data$counts)
plot(hist_data$breaks[-1], cum_freq, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "red", pch = 16)

