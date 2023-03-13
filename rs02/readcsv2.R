# review read csv

rdf = read.csv('./data/dept_data.csv', header=TRUE, na.strings = '.')

# location_id = 1700, 1600, 1700, 1500
v1 = c(1000, 2000, 1000, 1000) # 벡터
df_temp <- data.frame(location_id=v1)
df_temp
rdf <- cbind(rdf, df_temp)

rdf

str(rdf) # 구조 출력
# rbind(아래쪽으로 결합)

# 테이터를 dept_data2.csv
write.csv(rdf, "./data/dept_data2.csv", row.names=FALSE, na="")