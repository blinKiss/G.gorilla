# 매트릭스 -> 확장 다차원 매트릭스(대부분 수학계산)
v1 <- 1:10 # 벡터 (타입 동일)
# print(v1)

m1 <- matrix(v1, nrow=2, ncol=5) # 열을 채우고 다음 행으로
print(m1) 
# 행을 채우고 다음 열로
# byrow=T(F혹은 입력이 없으면 위 코드처럼  열부터 채우기인듯?)
m2 <- matrix(v1, nrow=2, ncol=5, byrow=T) 
print(m2)


