#Gan Wei Cai 269979 Lab6 Assignment
url<- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
download.file(url, "diet_data.zip")
unzip("diet_data.zip",exdir = "diet_data")


#Question 1
#Assign a function to weightMean variable
weightMean <- function(directory,day) {
  allfiles<-list.files(directory,full.names = TRUE)
  
  #Create a new empty data frame and assign to df
  df<-data.frame()
  
  #Append all the data into the df (data frame)
    for (i in 1:5){
      df<-rbind(df,read.csv(allfiles[i]))
    }
  
#Calculate and assign the Wt_kg and round off into 1 digit
df$Wt_kg<- round(df$Weight/2.2046,digits = 1)

  #Assign all the Wt_kg value which the day in data frame same with the 
  #date in function to v (vector)
  v <- c(df[which(df$Day==day),"Wt_kg"])
  #Calculate the mean from the variable v
  m <- mean(v,na.rm = TRUE)
  #Return the mean value
  return(m)
}
#Assign the function which created to x
x<-weightMean("diet_data",15)

#print the result
print(paste("The mean weight for day  15 is ",x))


#Question 2
#Assign a function to difWeightMean variable
difWeightMean <- function(directory){
  allfiles<-list.files(directory,full.names = TRUE)
  #Create a empty data frame and assign to df variable
  df<-data.frame()
  
  #Append all the data into the data frame
  for (i in 1:5){
    df<-rbind(df,read.csv(allfiles[i]))
  }
  
  # Calculate and Round off into 1 digit for Wt_kg
  df$Wt_kg<- round(df$Weight/2.2046,digits = 1)
  
  #Create a new Data Frame
  data_list <- data.frame(Day=character(), Mean=numeric())
  
  #Looping the Data
  for (row in 1:nrow(df)) {
    day<- df[row,"Day"]
    
    #Looping with condition and calculate the mean, then write in vector format
    if(day >=1) {
      a1<-c(Day <- day,Mean <- paste(mean(c(df[which(df$Day==day),"Wt_kg"]),
                                          na.rm = TRUE)))
    }
    #Store the vector into data frame
    data_list <- rbind(data_list,a1)
  }
  #Rename the column Header
  names(data_list)<- c("Day","Mean")
  #Remove the duplicated data in data frame
  no_duplicate_data <- data_list[!duplicated(data_list),]
  
  #Get the Max for Mean
  maxmean<-max(no_duplicate_data$Mean,na.rm = TRUE)
  #Get the Min for Mean
  minmean<-min(no_duplicate_data$Mean,na.rm = TRUE)
  #Get the different of Max and Min and Assign to different variable
  different<- as.numeric(maxmean) - as.numeric(minmean)
  
  #Assign the max mean day to x
  x<-no_duplicate_data[which(no_duplicate_data$Mean==maxmean),"Day"]
  #Assign the min mean day to y
  y<-no_duplicate_data[which(no_duplicate_data$Mean==minmean),"Day"]
  
  #Print all the result
  print(paste("The maximum mean weight day:",x))
  print(paste("The minimum mean weight day:",y))
  print(paste("The mean weight different is:",different,"kg"))
}

difWeightMean("diet_data")
