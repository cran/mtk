\name{setFactors-methods}
\alias{setFactors-methods}
\alias{setFactors}
\title{The \code{setFactors} method}
\description{Assigns a list of objects of the class \code{\linkS4class{mtkFactor}} to the underlying obejct.}
\usage{setFactors(this, aFactList)}
\value{invisible()}
\arguments{
\item{this}{the underlying object of the class \code{\linkS4class{mtkExpFactors}}.}
\item{aFactList}{a list of objects of the class \code{\linkS4class{mtkFactor}}.}
}
\author{Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod and Juhui WANG, MIA-jouy, INRA}

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
# Assign the factors to the mtkExpFactors' object

	setFactors(ishi.factors, list(x1,x2,x3))
}

