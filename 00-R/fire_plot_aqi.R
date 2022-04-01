fire_plot_aqi <-
function(x, title) {

data <- x$data %>% na.omit()
names(data)[2] <- "AQI"
data$datetime <- as.POSIXct(data$datetime, format="%Y-%m-%d %H:%M:%S") 
p <- data %>%
    ggplot(aes(x=datetime, y=AQI)) +
        geom_line() +
        scale_x_datetime(
            date_breaks = "3 day",
            date_labels = "%b %d"
        ) + 
labs(caption = "", x = "Day", y = "AQI") 

# parameters
p <- p + theme_classic() +
    theme(plot.caption = element_text(face = "italic"),
          plot.subtitle = element_text(face = "bold"),
          text = element_text(size=20)) 
p <- p + ggtitle(title) + theme(plot.title = element_text(hjust = 0.5))
p
}