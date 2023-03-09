# 상권데이터 서울, 경기, 인천 3개도시의 데이터를 csv파일로 읽어고
# 합친 후 rdf로 출력하고
# rdf변수의 값을 RData 파일로 저장하기
shop1 = read.csv('./data/소상공_경기.csv')
shop2 = read.csv('./data/소상공_서울.csv')
shop3 = read.csv('./data/소상공_인천.csv')
rdf = data.frame()
rdf = rbind(rdf, shop1, shop2, shop3)
rdf
save(rdf, file=('./data/shopRdata.csv'))