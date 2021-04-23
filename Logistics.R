

getwd() # workingdirectory 확인
setwd("C:/Program Files/RStudio/workingdirectory/R_Logistics") # workingdirectory 설정

'
install.packages("readxl")
install.packages("ggplot2")
install.packages("forecast")
install.packages("tseries")
'

library("ggplot2")
library("forecast")
library("tseries")
library("readxl")

Data_외기온도 = read_excel(path="C:/Program Files/RStudio/Data/Temp.xlsx", sheet = "외기온도", col_names=TRUE)
Data_열수요 = read_excel(path="C:/Program Files/RStudio/Data/Temp.xlsx", sheet = "수요실적", col_names=TRUE)
Data_니트 = read_excel(path="C:/Program Files/RStudio/Data/니트.xlsx", sheet = "니트", col_names=TRUE)


#remove(Data_temp)

Data_니트$날짜= as.Date(Data_니트$날짜)
ggplot(Data_니트, aes(x= 날짜, y= 니트/스웨터)) +
    geom_line() +
    scale_x_date('month')  +
    ylab("Daily Bike Checkouts") +
    xlab("")

autoplot(Data_니트[,"니트/스웨터"]) +
    ggtitle("이코노미석 탑승객: 멜버른-시드니") +
    xlab("연도") +
    ylab("탑승객(단위: 1000명)")

as.data.frame(Data_니트)
as.data.frame(Data_열수요)
as.data.frame(Data_외기온도)
    






