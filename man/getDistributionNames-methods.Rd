\name{getDistributionNames-methods}
\alias{getDistributionNames-methods}
\alias{getDistributionNames}
\title{The \code{getDistributionNames} method}
\description{Returns the names of the distributions associated with an object of the class \code{\linkS4class{mtkExpFactors}}.}
\usage{getDistributionNames(this)}
\value{a list.}
\arguments{
\item{this}{an object of the \code{\linkS4class{mtkExpFactors}} class.}
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

# Get the names of the distributions managed by all the factors
	names <- getDistributionNames(ishi.factors)

}

