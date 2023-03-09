# R 데이터 가져오기

load(file='./data/result.RData')
rstdf

# gradecsv.csv 파일의 데이터를 가져와서
# grade.RData로 저장해서
# gdf 데이터프레임을 rm 삭제하고
# 다시 로드 후 출력하시오
gdf = read.csv('./data/gradecsv.csv')
save(gdf, file='./data/grade.RData')
load(file='./data/grade.RData')
gdf
rm(gdf)
gdf
