tute1 <- read.csv("C:/Program Files/RStudio/Data/tute1.csv", header=TRUE)
View(tute1)

mytimeseries <- ts(tute1[,-1], start=1981, frequency=4)

autoplot(mytimeseries, facets=TRUE)
autoplot(mytimeseries)

# Excel Data
retaildata <- readxl::read_excel("C:/Program Files/RStudio/Data/retail.xlsx", skip=1)
View(retaildata) # 파일 불러오기

# 시계열 데이터 만들기
# frequency = 12 니까, 월별 
myts <- ts(retaildata[,"A3349873A"], 
           frequency=12, start=c(1982,4)) 
View(myts)
