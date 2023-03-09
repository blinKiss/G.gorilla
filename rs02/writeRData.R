# rdata 파일로 저장

fruit <- c("apple","orange","melon","banana","kiwi",
        "strawberry", "pear", "tomato", "grape", "blueberry")

count <- c(100, 150, 40, 60, 200,
        250, 120, 30, 170, 300)

rstdf <- data.frame(fruit, count)
rstdf
# R에서 쓸 데이터로 임시저장
save(rstdf, file='./data/result.RData')