# ggplot2

# 학점 데이터를 가져오기
rdf <- read.csv('./data/frequency.csv', header=TRUE, na.strings = '.')

library(ggplot2)

rdf$grade <- factor(rdf$grade, levels = c(1:5), 
                    labels = c('F', 'D', 'C', 'B', 'A'))

freq_nc <- table(rdf$grade)
freq_nc

# barplot
# barplot(freq_nc, col=cm.colors(length(freq_nc)))

ggplot(rdf, aes(grade)) + geom_bar()