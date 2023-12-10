\name{get_centered}
\alias{get_centered}
\title{PCA, center data}
\description{Calls \code{\link{binseg}} to compute a binary segmentation model for change in
mean with constant variance, max normal likelihood = min square
loss.}
\usage{binseg_normal(data.vec, 
    max.segments = sum(!is.validation.vec), 
    is.validation.vec = rep(FALSE, 
        length(data.vec)), 
    position.vec = seq_along(data.vec))}
\arguments{
  \item{data.vec}{Vector of numeric data to segment.}
  \item{max.segments}{Maximum number of segments to compute, default=number of FALSE
entries in \code{is.validation.vec}.}
  \item{is.validation.vec}{logical vector indicating which data are to be used in validation
set, default=all FALSE (no validation set).}
  \item{position.vec}{integer vector of positions at which data are measured,
default=1:length(\code{data.vec}).}
}

\value{List output from \code{\link{binseg}} which represents a binary segmentation
model.}

\author{Trevor Benajmin Silverstein}


get_centered <- function(data.matrix) {

  mean_centered_data <- scale(data, center = TRUE, scale = FALSE)

  return(mean_centered_data)
}


  ggplot()+
    theme_bw()+
    theme(panel.spacing=grid::unit(0, "lines"))+
    geom_vline(aes(
      xintercept=start.pos),
      color="green",
      data=segs.dt[1<start])+
    geom_segment(aes(
      start.pos, mean,
      xend=end.pos, yend=mean),
      data=segs.dt,
      color="green")+
    xlab("Position/index")+
    ylab("Data/mean value")+
    geom_point(aes(
      pos, data.vec),
      data=data.frame(data.vec, pos=seq_along(data.vec)))
}

}
