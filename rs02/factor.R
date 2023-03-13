# 데이터를 읽어서 범주형 변환하기
rdf = read.csv('./data/dept_data.csv', header=TRUE,
               na.strings = '.', stringsAsFactors = FALSE)
# stringsAsFactors = FALSE면 범주형이 아님
str(rdf$location_id) #컬럼 이름
rdf$lcation_id <- factor(rdf$location_id, levels = c(1000,2000))
rdf$location_id




