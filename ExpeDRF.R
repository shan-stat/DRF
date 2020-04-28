########## DRF example ##########
### !!Define DRF function using "FuncDRF.R" beforehand!! ###

### Benchmark experiment using "iris" dataset ###
library(datasets)
dat <- iris
n <- nrow(dat) # total instances
R <- 100 # number of repetition


# Runing step : repeat the experiment 100 times #
res <- c()
for(i in 1:R){
  print(i)
  
  # Splitting data into 50% of training set and 50% of test set #
  set.seed(12345*i)
  idx <- sample(n, n, replace = F)
  train.idx <- idx[1:ceiling(n*0.5)] ; test.idx <- idx[-(1:ceiling(n*0.5))]
  train.dat <- dat[train.idx,] ; test.dat <- dat[test.idx,]
  
  # Fitting DRF and Evaluating test accuracy #
  set.seed(123)
  fit.drf <- DRF.formula(Species~., data=train.dat, ntree=200)
  pred.drf <- predict(fit.drf, test.dat)
  res.drf <- table(pred.drf, test.dat$Species)
  res[i] <- sum(diag(res.drf))/sum(res.drf)
}
res
