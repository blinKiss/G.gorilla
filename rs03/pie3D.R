# 학점 도수분포표 그래프
# attach(rdf)
rdf <- read.csv('./data/frequency.csv', header=TRUE, na.strings = '.')
# rdf

rdf$grade <- factor(rdf$grade, levels = c(1:5), labels = c('F', 'D', 'C', 'B', 'A'))
# rdf$grade

grade_cn <- table(rdf$grade)

# pie(grade_cn,
#     init.angle = 90,
#     col=rainbow(length(grade_cn)))

# legend(1,1,
#        rownames((grade_cn)),
#        cex=0.5,
#        fill=rainbow(length(grade_cn)))

library(plotrix)
pie3D(grade_cn,
      labels=grade_cn, 
      labelcex = 1.2,
      explode=0.1,
      col=rainbow(length(grade_cn)))

legend(0.5, 1, rownames(grade_cn), cex = 0.7,
       fill=rainbow(length(grade_cn)))