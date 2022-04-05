fire_plot_aqi <-
function(x, title) {
    # Make plot
    var <- names(x)[2]
    p <- x %>% ggplot(aes_string(x = 'Date.time', y = var)) +
    geom_line() + 
    scale_x_datetime(date_breaks = "3 day", date_labels = "%b %d") + 
    labs(caption = "", x = "Day", y = bquote(.(names(data)[2])~'('*ug/m^3*')'))
    # Increase font
    p <- p + 
        theme_classic() + 
        theme(plot.caption = element_text(face = "italic"), plot.subtitle = element_text(face = "bold"), text = element_text(size = 20))
    # Addd title
    p <- p + 
        ggtitle(title) + 
        theme(plot.title = element_text(hjust = 0.5))
p
}