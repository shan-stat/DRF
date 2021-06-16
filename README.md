# DRF
This document aims to instruct how to use "Double random forest" algorithm in R program. The source codes are split into two main R files, "FuncDRF.R" and "ExpeDRF.R".

## FuncDRF.R
This R file describes how to import Double random forest (DRF) in R program. Refer that DRF is implemented based on the "randomForest" R package (Reference : A. Liaw and M. Wiener (2002). Classification and Regression by randomForest. R News 2(3), 18--22.).

Step 1) Activate "randomForest" R package 

Step 2) Define "DRF.default" function

Step 3) Define "DRF.formula" function

Step 4) Load "DRF.zip" file to R and Make your own R package 
- You can download "DRF.zip" file at https://github.com/shan-stat/DRF.
- The R file contains descriptions how to do this step.

## ExpeDRF.R
This R file produces a simple example for fitting DRF and evaluating it using "iris" dataset.

## Notice
- For more details, please refer to the paper "Han, S., Kim, H., & Lee, Y. S. (2020). Double random forest. *Machine Learning*, 109(8), 1569-1586".
- We plan on developing R package for DRF near soon. Thanks!
