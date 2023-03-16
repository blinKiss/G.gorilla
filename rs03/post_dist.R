# 사후 데이터를 사용하는 경우
rdf3 <- read.csv('./data/post.csv', header=TRUE, na.strings = '.')

rdf3$smoking <- factor(rdf3$smoking, levels = c(1,2), labels = c('Smoke', 'NoSmoke'))
# rdf3$smoking

rdf3$cancer <- factor(rdf3$cancer, levels = c(1,2), labels = c('폐암O', '폐암X'))

# post_n <- table(observation)
post_n <- xtabs(observation~cancer+smoking, data=rdf3)
post_n





