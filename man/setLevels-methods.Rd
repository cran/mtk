\name{setLevels-methods}
\alias{setLevels-methods}
\alias{setLevels}
\title{The \code{setLevels} method}
\description{Sets new levels to a discrete distribution.}
\usage{setLevels(this, levels)}
\value{invisible}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkDomain}} or \code{\linkS4class{mtkLevels}}. }
\item{levels}{an object of the class \code{\linkS4class{mtkLevels}} or a list from which we can create an object of the class \code{\linkS4class{mtkLevels}}.}
}
\author{Juhui WANG, MIA-jouy, INRA}

\examples{

# Create a  new mtkLevels for a discrete distribution

	l <- mtkLevels(type='categorical', levels = c(1,2,3,4,5), weights=rep(0.2, 5))
# Change the levels'name to ('a','b','c','d','e')
	setLevels(l, c('a','b','c','d','e'))
	
# Create a  new domain with a discrete distribution
	d <- mtkDomain(distributionName="discrete", domainNominalValue=3, 
			distributionParameters = list(type='categorical',
		 	levels = c(1,2,3,4,5), weights=rep(0.2, 5)))
		 
# Create a  new mtkLevels for a discrete distribution and assign it to the domain

	l <- mtkLevels(type='categorical', levels = c('a','b','c','d','e'), weights=rep(0.2, 5))
	setLevels(d, l)

# Change the domain's levels to type='categorical', levels = c(5,4,3,2,1), weights=rep(0.2, 5)
	
	setLevels(d, levels=list(type='categorical', levels = c(5,4,3,2,1), weights=rep(0.2, 5)))
}
