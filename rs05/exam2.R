# 서울 일부지역의 치킨집 분포를 조사

# 엑셀데이터 가져오기
library(readxl)

dfc <- read_excel('C:/Users/h/Documents/G.gorilla/rs05/data/store_chick.xlsx')
# dfc
dfa <-substr(dfc$소재지전체주소, 11, 16)
# head(dfa)
#  
dfnon <- gsub('\\s\\d*', '', dfa) # replace기능+[정규식]
# dfnon

dfdong <- gsub(' ', '', dfnon) # 공백 제거
# dfdong

# 도수분포 -> barplot 에 유용
addr_chick <- table(dfdong)
# addr_chick
addr_sort <- sort(addr_chick, decreasing = T)
barplot(addr_sort,
        xlab = '동이름',
        ylab = '치킨 가게 수',
        ylim=c(1,400),
        col=cm.colors(length(addr_sort)),
        cex.names = 0.7)



addr_rst <- data.frame(addr_sort)
addr_rst
