# 학점 데이터를 가져오기
rdf <- read.csv('./data/frequency.csv', header=TRUE, na.strings = '.')

# 비타민-대조약 = 감기영향
rdf2 <- read.csv('./data/pre.csv', header=TRUE, na.strings = '.')

# 흡연과 비흡연 = 영향

rdf3 <- read.csv('./data/post.csv', header=TRUE, na.strings = '.')

# install.packages('dplyr')
# install.packages('gmodels')
# install.packages('plotrix')
# install.packages('ggplot2')
