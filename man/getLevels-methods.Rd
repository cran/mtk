\name{getLevels-methods}
\alias{getLevels-methods}
\alias{getLevels}
\title{The \code{getLevels} method}
\description{Returns the levels associated with a discrete domain.}
\usage{getLevels(this)}
\value{a list}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkDomain}} or \code{\linkS4class{mtkLevels}} .}
}
\examples{
 	l <- mtkLevels(type='categorical', levels=seq(1:10), weight=rep(0.1, 10))
	 getLevels(l)
}
