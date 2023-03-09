# 엑셀 데이터를 가져오기
# 라이브러리 필요함
# install.packages('readxl')
# install.packages('vctrs') 
# library(readxl)
rdf <- read_excel('./data/gradexls.xlsx', sheet='Sheet1', col_names=TRUE, na='NA')
rdf

rdf2 <- read_excel('./data/stock price.xlsx', sheet='Sheet1', col_name=TRUE, na='NA')
rdf2






