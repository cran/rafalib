% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shist.R
\name{shist}
\alias{shist}
\title{smooth histogram}
\usage{
shist(
  z,
  unit,
  bw = "nrd0",
  n,
  from,
  to,
  plotHist = FALSE,
  add = FALSE,
  xlab,
  ylab = "Frequency",
  xlim,
  ylim,
  main,
  ...
)
}
\arguments{
\item{z}{the data}

\item{unit}{the unit which determines the y axis scaling and is drawn}

\item{bw}{arguments to density}

\item{n}{arguments to density}

\item{from}{arguments to density}

\item{to}{arguments to density}

\item{plotHist}{a logical: should an actual histogram be drawn under curve?}

\item{add}{a logical: add should the curve be added to existing plot?}

\item{xlab}{x-axis title, defaults to no title}

\item{ylab}{y-axis title, defaults to no title}

\item{xlim}{range of the x-axis}

\item{ylim}{range of the y-axis}

\item{main}{an overall title for the plot: see \code{\link{title}}.}

\item{...}{arguments to lines}
}
\description{
a smooth histogram with unit indicator
(we're simply scaling the kernel density estimate). The advantage of this plot
is its interpretability since the height of the curve represents the 
frequency of a interval of size \code{unit} around the point in question. 
Another advantage is that if \code{z} is a matrix, curves are plotted 
together.
}
\examples{

set.seed(1)
x = rnorm(50)
par(mfrow=c(2,1))
hist(x, breaks=-5:5)
shist(x, unit=1, xlim=c(-5,5))

}
