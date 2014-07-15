\name{getWeights-methods}
\alias{getWeights-methods}
\alias{getWeights}
\title{The \code{getWeights} method}
\description{Returns the weights of the discrete distribution associated with the factor's domain.}
\usage{getWeights(this)}
\value{a list of numeric values.}
\arguments{
\item{this}{the underlying object of the class to proceed (\code{\linkS4class{mtkLevels}} and \code{\linkS4class{mtkDomain}}).}
}
\author{Juhui WANG, MIA-jouy, INRA}
\examples{

# Create a discrete domain
	x1 <- mtkDomain(distributionName="discrete", domainNominalValue=0,
		 distributionParameters=list(type='categorical',
		 levels = c(1,2,3,4,5), weights=rep(0.2, 5)))
# Returns the weights of the associated discrete distribution
	getWeights(x1)
		 


}
