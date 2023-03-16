# exam3 을 막대그래프로 그리시오
gdf = read.csv('./data/game2.csv')
# gdf
# gender 컬럼을 범주형으로 변환 1,2 = 남자, 여자
# school 컬럼을 범주형으로 변환 1,2,3,4 = 중, 고, 대, 대학원

gdf$gender <- factor(gdf$gender, levels = c(1,2), labels = c('남자', '여자'))
gdf$school <- factor(gdf$school, levels = c(1:4), labels = c('중졸', '고졸', '대졸', '대학원졸'))
# gdf

game_cnt <- table(gdf$gender, gdf$school)
game_cnt

game_total <- addmargins(game_cnt, margin=1:2)

# sum 행 이름 변경
rownames(game_total)[which(rownames(game_total) == 'Sum')] <- '성별 총합'

# sum 열 이름 변경
colnames(game_total)[which(colnames(game_total) == 'Sum')] <- '학력 총합'

game_total[2,]

barplot(game_total, xlab='최종 학력',
        ylab='성별 인원 수(명)', ylim=c(0, 100),
        main = 'A 게임 이용자의 성별/학력 분류',
        col = cm.colors(2), beside=TRUE)

legend('topright', legend = c('남자', '여자', '총합'), fill = cm.colors(2), box.lty=0)
text(x = c(1.5, 4.5, 7.5, 10.5, 2.6, 5.6, 8.6, 11.5),
     y = c(game_total[1,], game_total[2,]) + 1,
     labels = c(game_total[1,], game_total[2,], game_total[3,]),
     col = 'blue')


