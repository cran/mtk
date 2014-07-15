\name{mtkFactor}
\alias{mtkFactor}
\title{The constructor of the class \code{\linkS4class{mtkFactor}}}
\description{
The constructor of the class  \code{\linkS4class{mtkFactor}}. See also the function \code{\link{make.mtkFactor}}
}
\usage{
	mtkFactor(name="unkown", id="unkown", unit="", type="numeric",
			 domain=mtkDomain(), featureList=list())
}
\value{an object of the \code{\linkS4class{mtkFactor}} class}

\arguments{
\item{name}{ a string to name the factor.}
\item{id}{a string giving the id of the factor in the code. }
\item{unit}{a string giving the measurement unit of the factor levels.}
\item{type}{a string giving the data type of the factor levels.}
\item{domain}{an object of the class \code{\linkS4class{mtkDomain}} giving the uncertainty domain associated with the factor.}
\item{featureList}{a list giving the uncertainty domain associated with the factor. It may be a list of objects from the class \code{\linkS4class{mtkDomain}}
or a named list defining the features.}
}
\author{Juhui WANG, MIA-jouy, INRA}
\examples{

# Create an object of the class mtkExpFactor
	x1 <- make.mtkFactor(name="x1", distribName="unif",
	             distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
                     distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
                     distribPara=list(min=-pi, max=pi))

}
