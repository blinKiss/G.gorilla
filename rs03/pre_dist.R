  # 다변량(여러개 컬럼)에 대한 도수 분포표
  rdf2 <- read.csv('./data/pre.csv', header=TRUE, na.strings = '.')
  # rdf2
  # 범주형으로 변환
  rdf2$treat <- factor(rdf2$treat, levels = c(1,2), labels = c('비타민', '위약'))
  
  # rdf2$treat
  
  rdf2$cold <- factor(rdf2$cold, levels = c(1, 2), labels = c('Cold', 'NoCold'))
  # rdf2$cold
  
  
  pre_nc <- table(rdf2$treat, rdf2$cold)
  # pre_nc
  
  pre_pn <- prop.table(pre_nc)
  # pre_pn
  
  pre_tn <- cbind(pre_nc, pre_pn)
  # pre_tn
  
  pre_ta <- addmargins(pre_tn, margin=1)
  # pre_ta
  
  
  dimnames(pre_ta)[[1]][3] <- "합계"
  # dimnames(pre_ta)[1]
  pre_ta