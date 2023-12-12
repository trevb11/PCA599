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

```{r}

set.seed(123)
num_samples_per_digit = 10
zip.data <- zip.dt[,.SD[sample(.N, num_samples_per_digit)], by = V1]
zip.x <- as.matrix(zip.data[,-1])
PCA599 <- function(data.matrix, K)

}
```
