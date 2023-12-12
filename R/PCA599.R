PCA599 <- function(data.matrix, K){
  
  #parse data as a numeric matrix
  if (!is.matrix(data.matrix) || !is.numeric(data.matrix)){
    stop("data.matrix must be a numeric matrix")
  }
  
  NROWS <- nrow(data.matrix)
  NCOLS <- ncol(data.matrix)
  
  #center the data
  scaled.data <- scale(data.matrix, center = TRUE, scale = FALSE)
  center <- (data.matrix - scaled.data)
  
  #calculate svd
  svd.result <- svd(scaled.data)
  pc.mat <- svd.result$u[, 1:K] %*% diag(svd.result$d[1:K])

  #mean mat + pca.fit$x %*% transpose of rotation matrix
  reconstruction <- scaled.data + pc.mat %*% t(svd.result$v[, 1:K])
  reconstruction.error <- as.numeric(mean((scaled.data - reconstruction)^2))
  
  result <- list()
  result$pc <- pc.mat
  result$rotation <- svd.result$v
  result$error <- reconstruction.error
  result$center <- center
  
  return(result)

}
