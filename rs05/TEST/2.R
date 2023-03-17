# exam2.r
# id 데이터100, 110, 120, 130, 140, 150, 160, 170, 180, 190
# gender 데이터m, m, w, m, w, m, m, w, m, w
# df_emp 데이터프레임을 만들고, 남녀성별의 빈도수를 출력하시오

id <- c(100, 110, 120, 130, 140, 150, 160, 170, 180, 190)
gender <- c('m', 'm', 'w', 'm', 'w', 'm', 'm', 'w', 'm', 'w')

df_emp <- data.frame(id, gender)
df_emp$gender <- factor(df_emp$gender, levels = c('m', 'w'), labels = c('남', '여'))

gen = table(df_emp$gender)
gen


