# 문자를 범주형으로 변환

v1 <- c(1,2,3,4,5)
v2 <- c('Kim', 'Lee', 'Park', 'Choi', 'Jeong')
v3 <- c('A', 'C', 'K', 'B', 'B')

rdf_info <- data.frame(id=v1,
                        name=v2,
                        level=v3)
str(rdf_info$level) # chr형

rdf_info
# v3 범주형을 A B C 3개만 사용해서 만드시오
rdf_info$level <- factor(rdf_info$level, levels = c('A', 'E', 'C', NA))
rdf_info$level
table(rdf_info$level)



