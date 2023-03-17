v0 <- c(1, 2, 3, 4, 5)

v1 <- c(11, 12, 13, 14, 15)

v2 <- c(21, 22, 23, 24, 25)

v3 <- c(31, 32, 33, 34, 35)

par(mfrow=c(2,2)) # mfrow 행부터 채우고, mfcol 열부터 채운다

barplot(v0, name='15')
barplot(v0, name='1115')
barplot(v0, name='2125')
barplot(v0, name='3135')
