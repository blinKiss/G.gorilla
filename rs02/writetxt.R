# 데이터프레임을 텍스트 파일(tsv)로 내보내기

v1 <- c("apple","orange","melon","banana","kiwi",
        "strawberry", "pear", "tomato", "grape", "blueberry")

v2 <- c(100, 150, 40, 60, 200,
        250, 120, 30, 170, 300)

resultdf <- data.frame(fruit=v1, cnt=v2)
# resultdf

# 행 데이터를 하나 추가
resultdf[11, ] <- c('peach', 50)

# 함수를 써서 추가
rdf2 <- data.frame(fruit='mango', cnt=300)
resultdf <- rbind(resultdf, rdf2)
resultdf

# 열 데이터를 하나 추가(컬럼은 숫자 아니라 컬럼 이름)
resultdf[ , 'price'] <- c(1000, 2000, 1500, 2000, 1000, 6000,
                          3000, 4000, 3500, 5500, 2500, 4500)


# 텍스트 파일로 저장하기
write.table(resultdf, './data/resulttxt.tsv',
            row.names=FALSE, col.name=FALSE,
            sep='\t')