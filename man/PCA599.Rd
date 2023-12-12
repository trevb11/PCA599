\name{PCA599}
\alias{PCA599}
\title{Principal Compenent Analysis}
\description{Principal Compnent Analysis dimensionality reduction function that computes principal compnents for an input feature matrix.}
\usage{PCA599(data.matrix, 
    K = maximum.components)}

\arguments{
  \item{data.matrix}{Matrix of numeric data on which to run PCA.}
  \item{K}{Maximum number of principal components to compute.}
}
\value{List of classPCA599 with elements pc, rotation, error, and center.}
\item{pc}{principal components}
\item{rotation}{rotation matrix}
\item{error}{reconstruction error (sum of squared error}
\item{center}{centerings used}

\author{Jared Benajmin Silverstein}

