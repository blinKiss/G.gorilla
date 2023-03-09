# csv 파일 데이터 가져오기

rdf <- read.csv('./data/gradecsv.csv', header=TRUE, na.string='.')


summary(rdf)

rdf2 <- read.csv('./data/emp_data.csv', header=TRUE, na.string='.')

summary(rdf2)



