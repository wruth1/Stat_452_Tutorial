#################
### Wine Data ###
#################

set.seed(1)

data = read.csv("Datasets/Wine Quality - Full.csv")

n = nrow(data)
p = ncol(data)

n.small = 500
rows.small = sample(1:n, n.small)
data.small = data[rows.small,]

write.table(data.small, "Datasets/Wine Quality.csv",
  sep = ",", row.names = F)

# pairs(data[,-p])
# 
# all.cors = matrix(0, p, p)
# 
# for(i in 1:(p-1)){
#   for(j in (i+1):p){
#     all.cors[i,j] = cor(data[,i], data[,j])
#   }
# }
# max.cor = max(abs(all.cors))
# # ind.max = which.max(abs(all.cors))
# 
# row.max = which(apply(all.cors, 1, function(X){
#   return(max.cor %in% abs(X))
# }))
# col.max = which(apply(all.cors, 2, function(X){
#   return(max.cor %in% abs(X))
# }))
# 
# # ind.max = which.max(abs(all.cors))
# # row.max = (ind.max %% p)
# # col.max = (ind.max %/% p) + 1
# 
# fit = lm(alcohol ~ . - quality, data=data)
# 
# fit.qual = lm(quality ~ ., data=data)
