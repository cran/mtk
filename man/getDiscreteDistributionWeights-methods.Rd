\name{getDiscreteDistributionWeights-methods}
\alias{getDiscreteDistributionWeights-methods}
\alias{getDiscreteDistributionWeights}
\title{The \code{getDiscreteDistributionWeights} method}
\description{Returns the weights of the discrete distribution associated with the factor's domain.}
\usage{getDiscreteDistributionWeights(this)}
\value{a list of numeric values.}
\arguments{
\item{this}{the underlying object of the class to proceed (\code{\linkS4class{mtkFactor}}).}
}
\author{Juhui WANG, MIA-jouy, INRA}
\examples{

# Create a discrete domain
	x1 <- make.mtkFactor(name="x1", distribName="discrete",
		 distribPara= list(type='categorical',
		 levels = c(1,2,3,4,5), weights=rep(0.2, 5)))
# Returns the weights of the associated discrete distribution
	getDiscreteDistributionWeights(x1)
		 


}
