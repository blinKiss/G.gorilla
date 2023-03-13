# 데이터프레임을 엑셀파일로 내보내기

# install.packages('writexl')
library(writexl)

v1 <- c("apple","orange","melon","banana","kiwi",
        "strawberry", "pear", "tomato", "grape", "blueberry")

v2 <- c(100, 150, 40, 60, 200,
        250, 120, 30, 170, 300)

rstdf <-data.frame(fruit=v1, cnt=v2)

write_xlsx(rstdf, path='./data/resultxls.xlsx')