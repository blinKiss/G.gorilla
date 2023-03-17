# exam4.r다음 혈액형 데이터를 사용하여
# # id = 1,2,3 .....50
# # btype = 1, 2, 2, 2, 4, 2, 1, 2, 2, 3, 3, 4, 3, 4, 1, 3, 3, 2, 1, 4,
# # 2, 3, 1, 1, 2, 2, 3, 1, 1, 2, 4, 2, 2, 1, 3, 4, 1, 1, 2, 3,
# # 1, 3, 1, 3, 2, 3, 2, 1, 1, 3
# 혈액형 도수분포표의 수평 막대그래프(범례포함), 3D 파이그래프를 각각 그리시오


v1 <- c(1:50)
v2 <- c(1, 2, 2, 2, 4, 2, 1, 2, 2, 3, 3, 4, 3, 4, 1, 3, 3, 2, 1, 4,
        2, 3, 1, 1, 2, 2, 3, 1, 1, 2, 4, 2, 2, 1, 3, 4, 1, 1, 2, 3,
        1, 3, 1, 3, 2, 3, 2, 1, 1, 3)

# 혈액형별로 도수값
bdf = data.frame(id = v1, btype = v2)
bdf$btype <- factor(bdf$btype, levels = c(1:4), labels = c('A', 'B', 'O', 'AB'))

par(mfrow = c(1, 2), cex.main=1.5)

blood_cnt <- table(bdf$btype)
# blood_cnt

barplot(blood_cnt,
        xlab='혈액형',
        ylab='인원수',
        ylim=c(0,20),
        main = '막대 그래프',
        col=terrain.colors(4))
legend('topright',
       legend = paste(names(blood_cnt), ' = ', blood_cnt, '명'),
       bg = 'transparent',
       cex=0.6,
       fill=terrain.colors(4),
       box.lty = 0)


library(plotrix)

bdf$btype <- factor(bdf$btype, levels = c('AB', 'O', 'B', 'A'))

blood_cnt2 <- table(bdf$btype)
# blood_cnt2
blood_tdf <- data.frame(blood_cnt2)
blood_per <- round(blood_tdf$Freq/sum(blood_tdf$Freq)*100, 1)
blood_per2 <- paste(blood_per, '%')

pie3D(blood_cnt2,labels=blood_per2,
      main = '파이3D 그래프',
      labelcex = 0.9,
      labelcol = 'brown',
      explode=0.1,
      col=c('coral', 'lightgreen', 'skyblue', 'gold'))


legend('topright', 
       legend = paste(names(blood_cnt)),
       bg = 'transparent',
       cex=0.47,
       
       fill=c('gold', 'skyblue', 'lightgreen', 'coral'),
       box.lty = 0)




