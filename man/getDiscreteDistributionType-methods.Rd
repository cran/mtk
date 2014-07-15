\name{getDiscreteDistributionType-methods}
\alias{getDiscreteDistributionType-methods}
\alias{getDiscreteDistributionType}
\title{The \code{getDiscreteDistributionType} method}
\description{Returns the type of the discrete distribution associated with the factor's domain.}
\usage{getDiscreteDistributionType(this)}
\value{a string.}
\arguments{
\item{this}{the underlying object of the class to proceed (\code{\linkS4class{mtkFactor}}).}
}
\author{Juhui WANG, MIA-jouy, INRA}
\examples{

# Create a discrete domain
	x1 <- make.mtkFactor(name="x1", distribName="discrete",
		 distribPara= list(type='categorical',
		 levels = c(1,2,3,4,5), weights=rep(0.2, 5)))
# Returns the type of the associated discrete distribution
	getDiscreteDistributionType(x1)
		 


}
