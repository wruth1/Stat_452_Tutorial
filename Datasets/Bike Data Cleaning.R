data.raw = read.csv("Lecture 2 b-d/SeoulBikeData.csv")

### Remove categorical predictors
is.quant = sapply(1:ncol(data.raw), function(i){
  is.numeric(data.raw[,i])
})
data = data.raw[,is.quant]

### Rename variables
colnames(data) = c("Rentals", "Hour", "Temp", "Humid", "Wind",
  "Visibility", "Dew", "Solar", "Rain", "Snow")


head(data)
summary(data)
pairs(data)

fit = lm(Rentals ~ ., data=data)

sapply(1:ncol(data), function(i){
  hist(data[,i], main = colnames(data)[i])
})

all.cors = sapply(2:ncol(data), function(i){
  cor(data[,1], data[,i])
})


