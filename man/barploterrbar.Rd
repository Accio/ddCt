\name{barploterrbar}
\alias{barploterrbar}
\title{Barplot with error bars.}
\description{Barplot with error bars.}
\usage{
barploterrbar(y, yl, yh, barcol="orange", errcol="black", horiz=FALSE,
w=0.2,theCut=NULL,columnForDiffBars=TRUE,cex.axis =
par("cex.axis"),zeroForNA=TRUE,legend=FALSE,groups = NULL, order=FALSE, ...)
}
\arguments{
  \item{y}{Numeric vector.}
  \item{yl}{Numeric vector of same length as y.}
  \item{yh}{Numeric vector of same length as y.}
  \item{barcol}{Color of the bars.}
  \item{errcol}{Color of the error bars.}
  \item{horiz}{Logical. As in \code{\link[graphics:barplot]{barplot}}.}
  \item{w}{Size of the error bar ticks.}
  \item{theCut}{The cut value}
  \item{columnForDiffBars}{Whether the matrix should be transposed (by
    default the rows are for diff bars)}
  \item{zeroForNA}{Draw 0 instead of NA}
  \item{cex.axis}{Axis font cex}
  \item{legend}{Sould a legend be plotted ?}
  \item{groups}{a factor - if specified the bars are collored according
    to the group they belong to}
  \item{order}{plot sample values in descending order}
  \item{...}{Further arguments that get passed on to
     \code{\link[graphics:barplot]{barplot}}.}
}

\details{The function calls \code{\link[graphics:barplot]{barplot}} with
\code{y} and decorates it with error bars according to \code{yl} and
\code{yh}.}

\value{The function is called for its side effect, producing a plot.} 

\seealso{\code{\link[graphics:barplot]{barplot}}}

\author{Markus Ruschhaupt, Florian Hahne}
\keyword{hplot}
\examples{
  y <- matrix(runif(80), ncol=5)
  ym <- apply(y, 2, mean)
  dy <- apply(y, 2, sd)*2/sqrt(nrow(y))
  barploterrbar(ym, ym-dy, ym+dy, barcol="#0000c0", errcol="orange")
}

