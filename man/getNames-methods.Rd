\name{getNames-methods}
\alias{getNames-methods}
\alias{getNames}
\title{The \code{getNames} method}
\description{Returns the name of the factors managed by an object of class \code{\linkS4class{mtkExpFactors}}.}
\usage{getNames(this)}
\value{a list of strings}
\arguments{
\item{this}{an object of the class \code{mtkExpFactors}.}
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

# Get the names of the factors managed by all the factors
	factors <- getNames(ishi.factors)
}
