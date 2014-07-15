\name{getType-methods}
\alias{getType-methods}
\alias{getType}
\title{The \code{getType} method}
\description{Returns a string indicating the data type associated with the underlying object.}
\usage{getType(this)}
\value{a string}
\arguments{
\item{this}{an object of the underlying class.}
}
\author{Juhui WANG, MIA-jouy, INRA}

\examples{
# Define a factor
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	
# Return the data-type associated with the factor
	t <- getType(x1)
	
# Create an object of the 'mtkFeature' class.

f <- mtkFeature(name="x", type="double", val=0.0)

# Return the data-type associated with the feature

getType(f) # gives 'double'
}
