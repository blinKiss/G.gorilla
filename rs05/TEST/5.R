# exam5.r
# ./data/employee.csv직원정보
# 급여mean, 급여median, 급여절단평균(절단범위5%) 구하여 
# 출력하고급여의 히스토그램 출력하시오

edf = read.csv('C:/Users/h/Documents/G.gorilla/rs05/data/employees.csv')
# edf$SALARY
'급여mean'
mean(edf$SALARY)
'급여median'
median(edf$SALARY)
'급여절단평균 5%'
mean(edf$SALARY, trim=0.05)
'히스토그램'
hist(edf$SALARY, main='A 회사 급여')




