\name{getFactorFeatures-methods}
\alias{getFactorFeatures-methods}
\alias{getFactorFeatures}
\title{The \code{getFactorFeatures} method}
\description{Returns the features associated with the managed factors.}
\usage{getFactorFeatures(this)}
\value{a named list.}
\arguments{
\item{this}{an object of the \code{\linkS4class{mtkExpFactors}} class}
}

\author{Juhui WANG, MIA-jouy, INRA}
\examples{
# Define three factors
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
		 
# Define a list of features and associate it with the factor x1
	features <- make.mtkFeatureList(list(pre=5, post=60))
	setFeatures(x1, features) 
		 
	x2 <- make.mtkFactor(name="x2", distribName="unif",
 		 distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
    	 distribPara=list(min=-pi, max=pi))

# Build an object of the "mtkExpFactors" class
	ishi.factors <- mtkExpFactors(list(x1,x2,x3))

# Get the features of the managed factors as a list
	factors <- getFactorFeatures(ishi.factors)
}

