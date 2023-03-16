# 텍스트 파일 tsv
# read : 데이터프레임을 읽을 때

grdtxt <- read.table('./data/gradetxt.tsv',
                     header=FALSE, sep = '\t',
                     stringsAsFactors = FALSE,
                     na.strings = '.')
# print(grdtxt)
# str(grdtxt)
# dim(grdtxt)
nrow(grdtxt)
ncol(grdtxt)





