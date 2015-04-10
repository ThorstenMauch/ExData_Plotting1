

readDfepc <- function(){
  library("sqldf")
  library("lubridate")
  if(!exists("dfepc")){ 
    t_dfepc <- read.csv.sql("household_power_consumption.txt",  sep=';', 
                      sql = "select * from file where Date = '1/2/2007' or Date = '2/2/2007'" )
    #closeAllConnections()
    t_dfepc$DateTime<-dmy_hms(paste(t_dfepc$Date,t_dfepc$Time, sep= " "))
           
    assign("dfepc", t_dfepc , envir = .GlobalEnv)
  }
  dfepc
}

