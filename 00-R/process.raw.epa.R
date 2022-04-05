process.raw.epa <-
  function(year, state, monitor, start.date, end.date, param) {
    zipFile <-
    epa_downloadData(year = year, parameterCode = param, tempdir())
    tbl <- epa_parseData(zipFile)
    
if (param == '44201') {
      names(tbl)[14] <- 'Ozone'
    } else
      if (param == '42401') {
        names(tbl)[14] <- 'SO2'
      } else
        if (param == '42401') {
          names(tbl)[14] <- 'CO'
        } else
          if (param == '42602') {
            names(tbl)[14] <- 'NO2'
          } else
            if (param == '88101') {
              names(tbl)[14] <- 'PM2.5'
            } else
              if (param == '88502') {
                names(tbl)[14] <- 'PM2.5'
              } else
                if (param == '81102') {
                  names(tbl)[14] <- 'PM10'
                } else
                  if (param == 'SPEC') {
                    names(tbl)[14] <- 'PM2.5'
                  } else
                    if (param == 'WIND') {
                      names(tbl)[14] <- 'Wind'
                    } else
                      if (param == 'TEMP') {
                        names(tbl)[14] <- 'Temperature'
                      } else
                        if (param == 'PRESS') {
                          names(tbl)[14] <- 'Barometric Pressure'
                        } else
                          if (param == 'RH_DP') {
                            names(tbl)[14] <- 'RH and dewpoint'
                          } else
                            if (param == 'HAPS') {
                              names(tbl)[14] <- 'HAPs'
                            } else
                              if (param == 'VOCS') {
                                names(tbl)[14] <- 'VOCs'
                              } else
                                stop('Please enter a valid parameter code.')

    data <- tbl %>%
      dplyr::filter(`State Name` == state | `Site Num` == monitor) %>%
      dplyr::select(`Date Local`,
                    `Time Local` ,
                    names(tbl)[14],
                    `Units of Measure`) %>%
      tidyr::unite('Date.time',
                   `Date Local`,
                   `Time Local`,
                   sep = ' ',
                   remove = TRUE) %>%
     mutate(., Date.time = as.POSIXct(Date.time, format = "%Y-%m-%d %H:%M:%S"))
                      
  data <- tbl %>%
      dplyr::filter(`State Name` == state | `Site Num` == monitor) %>%
      filter(between(as.Date(`Date Local`), as.Date(start.date),as.Date(end.date))) %>%
      dplyr::select(`Date Local`,
                    `Time Local` ,
                    names(tbl)[14],
                    `Units of Measure`) %>%
      tidyr::unite('Date.time',
                   `Date Local`,
                   `Time Local`,
                   sep = ' ',
                   remove = TRUE)%>%
     mutate(., Date.time = as.POSIXct(Date.time, format = "%Y-%m-%d %H:%M")) %>%
     distinct(Date.time, .keep_all = TRUE)
                        
    #data[data$Date.time >= (as.POSIXct(paste(start.date, "00:00:00"))) & data$Date.time <= as.POSIXct(paste(end.date, "23:00:00")), ]
    
    return(data)
  }  