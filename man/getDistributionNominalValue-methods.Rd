\name{getDistributionNominalValue-methods}
\alias{getDistributionNominalValue-methods}
\alias{getDistributionNominalValue}
\title{The \code{getDistributionNominalValue} method}
\description{Returns the nominal value associated with the uncertainty domain of a factor.}
\usage{getDistributionNominalValue(this)}
\value{ANY}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkFactor}}.}
}
\author{Juhui WANG, MIA-jouy, INRA}
\examples{
# Create a a factor with a nominal value
	
	x1 <- make.mtkFactor(name="x1", type='numeric', nominal=0.0, distribName="unif",
	             distribPara=list(min=-pi, max=pi))
	
	getDistributionNominalValue(x1)


}
