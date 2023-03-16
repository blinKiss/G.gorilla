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

barplot(game_cnt, xlab='최종 학력', 
        ylab='성별 인원 수(명)', ylim=c(0, 20), 
        main = 'A 게임 이용자의 성별/학력 분류',
        col = cm.colors(2), beside=TRUE)

legend('topright', legend = c('남자', '여자'), fill = cm.colors(2), box.lty=0)
text(x = c(1.5, 4.5, 7.5, 10.5, 2.6, 5.6, 8.6, 11.5), 
     y = c(game_cnt[1,], game_cnt[2,]) + 1, 
     labels = c(game_cnt[1,], game_cnt[2,]),
     col = 'blue')

# legend('topright',
#        legend = paste(names(game_cnt), ' : ', game_cnt, '명'),
#        fill = cm.colors(8),
#        cex=0.7,
#        bty = 'n')

# legend('topright',
#        legend = paste(c('중졸 남자', '중졸 여자', '고졸 남자', '고졸 여자', '대졸 남자', '대졸 여자', '대학원졸 남자', '대학원졸 여자'), ' : ', game_cnt, '명'),
#        fill = cm.colors(2),
#        cex=0.7,
#        bty = 'n')