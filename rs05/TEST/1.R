# exam1.r
# 다음 벡터 데이터를 이용하여 df_prod 데이터프레임을 생성하여 
# 출력하고 행과 열의 갯수를 출력하시오
# 
# 과일 fruit
# 오렌지 포도 딸기 수박 사과 키위 천혜향 배 파인애플 복숭아
# 
# 갯수 price
# 1400 2300 1600 8000 3200 4000 2500 3000 5000 1500

fruit <- c('오렌지', '포도', '딸기', '수박', '사과',
        '키위', '천혜향', '배', '파인애플', '복숭아')

price <- c(1400, 2300, 1600, 8000, 3200, 4000, 2500, 3000, 5000, 1500)

df_fruits <- data.frame('과일' = fruit, '갯수'= price)
'행 갯수'
nrow(df_fruits)
'열 갯수'
ncol(df_fruits)