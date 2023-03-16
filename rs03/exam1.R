# id = 1,2,3 ~ 30
# btye = 1, 2, 3, 4
v1 <- c(1:30)
v2 <- c(1, 2, 2, 2, 1,
        1, 3, 1, 2, 4,
        2, 1, 2, 2, 3,
        3, 4, 3, 4, 1,
        3, 3, 2, 1, 4,
        2, 3, 1, 1, 2)

# 혈액형별로 도수값
bdf = data.frame(id = v1, btype = v2)
bdf$btype <- factor(bdf$btype, levels = c(1:4), labels = c('A', 'B', 'O', 'AB'))
bdf_t <- table(bdf$btype)
bdf_t
bdf_p <- round(prop.table(bdf_t)*100, 1)
bdf_p
bdf_c <- cbind('명' = bdf_t, '비율' = bdf_p)
bdf_c