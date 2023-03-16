gdf = read.csv('./data/game2.csv')
# gdf
# gender 컬럼을 범주형으로 변환 1,2 = 남자, 여자
# school 컬럼을 범주형으로 변환 1,2,3,4 = 중, 고, 대, 대학원

gdf$gender <- factor(gdf$gender, levels = c(1,2), labels = c('남자', '여자'))
gdf$school <- factor(gdf$school, levels = c(1:4), labels = c('중졸', '고졸', '대졸', '대학원졸'))

game_table <- table(gdf$gender, gdf$school)
game_table