library(testthat)
library(devtools)
install.packages('stats')


test_that("PCA computs same answer as R", {
  set.seed(17)
  test.data <- matrix(rnorm(300), ncol = 2)
  my.result <- PCA(test.data, 2)
  expected.result <- stats::prcomp(test.data)
  expect_equal(my.result, expected.result)
})
