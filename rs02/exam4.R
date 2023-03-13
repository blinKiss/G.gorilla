# id 데이터 100, 110, 120, 130, 140, 150, 160, 170, 180, 190
# gender 데이터 m, m, f, m, f, m, f, f, f, m
# emp_df 데이터프레임을 만들고 남녀성별의 빈도수를 출력
v1 <- c(100, 110, 120, 130, 140, 150, 160, 170, 180, 190)
v2 <- c('M', 'M', 'F', 'M', 'F', 'M', 'F', 'F', 'F', 'M')
emp_df <- data.frame(
  id = v1,
  gender = v2
)
emp_df
str(emp_df)
emp_df$gender <- factor(emp_df$gender,
                        levels = c('M', 'F'),
                        labels = c('남', '녀'))
emp_df$gender
table(emp_df$gender)
