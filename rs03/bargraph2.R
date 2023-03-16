# 두 개 이상(다변량) 컬럼에 대한 도수 그래프

# attach(rdf2)
# rdf2

pre_nc <- table(rdf2$treat, rdf2$cold)
pre_nc

# beside=TRUE 컬럼끼리 비교할 때 유용
# barplot(pre_nc,
#         xlab = '집단',
#         ylab = '발생%',
#         col=c('green','blue'),
#         beside=TRUE
#         )
# 
# legend('topright', rownames(pre_nc), cex = 0.7,
#        col=c('green', 'blue')


# 모자이크 차트 == (파이썬) 와플 차트
mosaicplot(pre_nc, shade=TRUE, xlab='처방', ylab='감기유무')
