\name{Ishigami.factors}
\docType{data}
\alias{Ishigami.factors}

\title{Input factors of the \code{Ishigami} model}
\description{
The names and uncertainty distributions of the 3 input factors \code{x1, x2, x3} involved in the \code{\link{Ishigami}} function
 which is usually used as a model example for uncertainty and sensitivity analysis methods. 
}
\usage{data(Ishigami.factors)}
\format{an object of class \code{\linkS4class{mtkExpFactors}}.}
\references{Saltelli, A., Chan, K., & Scott, E. M. (Eds.). (2000). Sensitivity analysis (Vol. 134). New York: Wiley.}
\seealso{help(Ishigami), help(ishigami.fun,sensitivity)}
\examples{
# The code used to generate the Ishigami.factors is as follows:

	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
    	 distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
    	 distribPara=list(min=-pi, max=pi))
     
	Ishigami.factors <- mtkExpFactors(list(x1,x2,x3))
	
# To import the Ishigami.factors, just use the following line
	data(Ishigami.factors)
}
\keyword{datasets}

