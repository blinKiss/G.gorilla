# 직원정보 급여
# 급여 mean median 절단평균 히스토그램
empdf <- read.csv('./data/employees.csv')
'A회사 직원 급여'
empdf$SALARY
'급여 평균'
mean(empdf$SALARY)
'급여 중앙값'
median(empdf$SALARY)
'급여 절단 평균? 10%'
mean(empdf$SALARY, trim = 0.1)
'히스토그램'
hist(empdf$SALARY, breaks=16)