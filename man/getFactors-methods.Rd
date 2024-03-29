\name{getFactors-methods}
\alias{getFactors-methods}
\alias{getFactors}
\title{The \code{getFactors} method}
\description{Retunrs the managed factors.}
\usage{getFactors(this)}
\value{a list of objects from the class \code{\linkS4class{mtkFactor}}. }
\arguments{
\item{this}{the underlying object of the class \code{\linkS4class{mtkExpFactors}}.}
}
\author{Juhui WANG, MIA-jouy, INRA}

\examples{

# Build an object of the "mtkExpFactors" class
	ishi.factors <- mtkExpFactors()
	
# Define the factors
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
   	 	 distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
   	  	distribPara=list(min=-pi, max=pi))
# Assign and return the factors to the mtkExpFactors' object

	setFactors(ishi.factors, list(x1,x2,x3))
	getFactors(ishi.factors)
}

