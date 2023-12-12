# PCA599

INSTILLATION

install.packages("PCA599")
##OR
if(require("remotes"))install.packages("remotes")
remotes::install_github("trevb11/PCA599")

USAGE
The main function is PCA599 for which you must at least specify two arguments:

data.matrix specifies the matrix of numeric data.
K is an integer of the maximum number of principal components, which must be less than the number of columns in the input matrix.

Principle Components
```{r}
set.seed(123)
num_samples_per_digit = 10
zip.data <- zip.dt[,.SD[sample(.N, num_samples_per_digit)], by = V1]
zip.x <- as.matrix(zip.data[,-1])
model <- PCA599(zip.data, 3)

print(model$pc[1:5,])
PC1       PC2
[1,] -4.969280  1.078671
[2,] -4.302745 -3.531307
[3,] -4.715930 -4.614853
[4,] -2.551909 -5.640717
[5,] -3.035032 -3.708562
```
