rdf_wgt <- read.csv('./data/wgt.csv', na.strings = '.')

# 성별은 범주형
rdf_wgt$sex <- factor(rdf_wgt$sex, levels = c(1,2), labels = c('남', '여'))

# rdf_wgt$sex

# mean 평균값은
mean(rdf_wgt$weight) # 다 더해서 총 수로 나눔
is.na(rdf_wgt$weight) # 데이터가 적은 경우
sum(is.na(rdf_wgt$weight)) # 많은 경우 - 결측값 없음
# mean 평균시 결측값 제외하려면 옵션 추가
mean(rdf_wgt$weight, na.rm = TRUE)

# 각 값들이 고르지 않은 경우 중앙값(순서대로 배치)
median(rdf_wgt$weight)

# 절단평균을 사용하려면 옵션 추가
mean(rdf_wgt$weight, trim = 0.1) # 상한가의 10%

stem(rdf_wgt$weight)

# 요약하는 함수
summary(rdf_wgt)
