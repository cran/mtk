\name{getDiscreteDistributionLevels-methods}
\alias{getDiscreteDistributionLevels-methods}
\alias{getDiscreteDistributionLevels}
\title{The \code{getDiscreteDistributionLevels} method}
\description{Returns the levels of the discrete distribution associated with the factor's domain.}
\usage{getDiscreteDistributionLevels(this)}
\value{a list.}
\arguments{
\item{this}{the underlying object of the class to proceed (\code{\linkS4class{mtkFactor}}).}
}
\author{Juhui WANG, MIA-jouy, INRA}
\examples{

# Create a discrete domain
	x1 <- make.mtkFactor(name="x1", distribName="discrete",
		 distribPara= list(type='categorical',
		 levels = c(1,2,3,4,5), weights=rep(0.2, 5)))
		 
# Returns the levels of the associated discrete distribution
	getDiscreteDistributionLevels(x1)
		 


}
