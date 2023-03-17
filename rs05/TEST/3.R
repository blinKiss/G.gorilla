# exam3.r
# ./data/game2.csv
# gender컬럼을 범주형으로 변환1,2 = 남자, 여자
# school 컬럼을 범주형으로 변환1,2,3,4 중학교, 고등학교, 대학교, 대학원
# 도수분포, 상대도수분포를 계산하여 열병합하여 합계를 구하여 2차 데이터(pre_a)를 구하시오

gdf = read.csv('C:/Users/h/Documents/G.gorilla/rs03/data/game2.csv')
gdf$gender <- factor(gdf$gender, levels = c(1,2), labels = c('남자', '여자'))
gdf$school <- factor(gdf$school, levels = c(1:4), 
                     labels = c('중학교', '고등학교', '대학교', '대학원'))

game_table <- table(gdf$gender, gdf$school)
'도수분포'
game_table

'상대도수분포'
prop.table(game_table)



