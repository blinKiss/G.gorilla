# 학점 도수분포표 그래프
attach(rdf)
rdf

rdf$grade <- factor(rdf$grade, levels = c(1:5), labels = c('F', 'D', 'C', 'B', 'A'))
rdf$grade

#barplot(rdf) # 데이터프레임은 오류가 생긴다
#barplot(rdf$grade)
grade_cn <- table(rdf$grade)
grade_cn # y 높이값
barplot(grade_cn, xlab='학점', ylab='인원수', ylim=c(0,30), col=heat.colors(5))
# col=c('red', '#123123', 'blue', '#321321, 'yellow') 이런식으로도 가능
legend('topright', rownames(grade_cn))
