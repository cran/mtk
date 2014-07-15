\name{setDistributionParameters-methods}
\alias{setDistributionParameters-methods}
\alias{setDistributionParameters}
\title{The \code{setDistributionParameters} method}
\description{Sets the parameters of the distribution associated with a factor's domain.}
\usage{setDistributionParameters(this, aDistParamList)}
\value{invisible()}
\arguments{
\item{this}{the underlying object of the class \code{\linkS4class{mtkDomain}}.}
\item{aDistParamList}{a list of objects of class \code{\linkS4class{mtkParameter}} or a named list from which we can build a list of objects of class \code{\linkS4class{mtkParameter}} .}
}
\author{Juhui WANG, MIA-jouy, INRA}

\examples{

# 1)  Build an object of the "mtkDomain" class
	d <- mtkDomain(distributionName="unif", domainNominalValue=0)
	
	## Define the parameters
	p <- make.mtkParameterList(list(min=-pi, max=pi))
	
	## Assign the parameters to the mtkDomain's object

	setDistributionParameters(d, p)
# 2) Build an object of the "mtkDomain" class
	d <- mtkDomain(distributionName="unif", domainNominalValue=0)
	
	## Assign the parameters to the mtkDomain's object

	setDistributionParameters(d, list(min=-pi, max=pi))

# 3) Build an object of the "mtkDomain" class with a discrete distribution
	d <- mtkDomain(distributionName="discrete", domainNominalValue=0)

	## Assign the parameters to the mtkDomain's object

	setDistributionParameters(d, list(type='categorical', levels=seq(1:3), weights=rep(0.33,3)))
}