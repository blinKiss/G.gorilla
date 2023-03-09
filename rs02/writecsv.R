# 데이터프레임을 csv 파일로 내보내기

v1 <- c("apple","orange","melon","banana","kiwi",
        "strawberry", "pear", "tomato", "grape", "blueberry")

v2 <- c(100, 150, 40, 60, 200,
        250, 120, 30, 170, 300)

rstdf <- data.frame(fruit=v1, cnt=v2)
rstdf <- rbind(rstdf, data.frame(fruit='peach', cnt=50))

write.csv(rstdf, './data/resultcsv.csv', row.names=FALSE, na='')