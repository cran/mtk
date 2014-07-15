\name{getDistributionParameters-methods}
\alias{getDistributionParameters-methods}
\alias{getDistributionParameters}
\title{The \code{getDistributionParameters} method}
\description{Gets the parameters of the distribution(s) associated with an object (\code{\linkS4class{mtkDomain}}, \code{\linkS4class{mtkFactor}} or \code{\linkS4class{mtkExpFactors}}).}
\usage{getDistributionParameters(this)}
\value{a named list or a nested list}
\arguments{
\item{this}{an object of the underlying class (\code{\linkS4class{mtkDomain}}, \code{\linkS4class{mtkFactor}} or \code{\linkS4class{mtkExpFactors}})}
}


\author{Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod and Juhui WANG, MIA-jouy, INRA}
\examples{
# Define three factors
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
 		 distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
    	 distribPara=list(min=-pi, max=pi))

# Build an object of the "mtkExpFactors" class
	ishi.factors <- mtkExpFactors(list(x1,x2,x3))

# Return the parameters of the distributions managed by all the factors as a nested list
	names <- getDistributionParameters(ishi.factors)
}
