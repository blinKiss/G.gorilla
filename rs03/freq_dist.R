# attach(rdf) # 사용했던 데이터를 다시 활용 사용한 후 주석해야 또 사용가능
# detach(rdf) # 사용하고 메모리에서 지워둠
# save(RData 파일) 읽는 속도가 빠름

rdf$grade <- factor(rdf$grade, levels = c(1:5), labels = c('F', 'D', 'C', 'B', 'A') )

# 도수
# rdf_sum <- table(rdf$grade)

# 상대 도수
# prop.table(rdf_sum)

# 2차 데이터로 도수 + 상대도수
grade_cn <- table(rdf$grade)
grade_cn

grade_pn <- prop.table(grade_cn)*100
grade_pn

# 컬럼(열)으로 합치기
grade_tc <- cbind(grade_cn, grade_pn)
grade_tc

# 합계를 추가
grade_ts <- addmargins(grade_tc)
grade_ts


