\name{setWeights-methods}
\alias{setWeights-methods}
\alias{setWeights}
\title{The \code{setWeights} method}
\description{Gives new weights to the discrete distribution associated with the factor's domain.}
\usage{setWeights(this, weights)}
\value{invisible}
\arguments{
\item{this}{the underlying object of the class to proceed (\code{\linkS4class{mtkLevels}}).}
\item{weights}{a vector of numeric value.}

}
\author{Juhui WANG, MIA-jouy, INRA}
\examples{

# Create a mtkLevels object

	l <- mtkLevels(type='categorical', levels=c(1,2,3,4))

	setWeights(l, weights=rep(0.25,4))
}
