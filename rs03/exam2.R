# id = 1,2,3 ~ 30
# btye = 1, 2, 3, 4
v1 <- c(1:30)
v2 <- c(1, 2, 2, 2, 1,
        1, 3, 1, 2, 4,
        2, 1, 2, 2, 3,
        3, 4, 3, 4, 1,
        3, 3, 2, 1, 4,
        2, 3, 1, 1, 2)

# 혈액형별로 도수값
bdf = data.frame(id = v1, btype = v2)
bdf$btype <- factor(bdf$btype, levels = c(1:4), labels = c('A', 'B', 'O', 'AB'))

blood_cnt <- table(bdf$btype)
blood_cnt

# barplot(blood_cnt,
#         xlab='혈액형',
#         ylab='인원수',
#         ylim=c(0,10),
#         col=terrain.colors(4))

bdf$btype <- factor(bdf$btype, levels = c('AB', 'O', 'B', 'A'))

blood_cnt2 <- table(bdf$btype)

pie(blood_cnt2,
    init.angle = 0,
    col=cm.colors(length(blood_cnt2))
)

legend('topright', 
       legend = paste(names(blood_cnt), ' = ', blood_cnt, '명'), 
       box.lty = 0)

# legend 결과값 앞에 색상을 넣으려면 fill 을 사용
