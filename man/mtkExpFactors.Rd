\name{mtkExpFactors}
\alias{mtkExpFactors}
\title{The constructor of the class \code{\linkS4class{mtkExpFactors}}}
\description{
This class is used to define the input factors for a simulation experiment.}

\usage{
mtkExpFactors(expFactorsList=list())
}
\value{an object of the \code{\linkS4class{mtkExpFactors}} class}

\arguments{
\item{expFactorsList}{a list of \code{\linkS4class{mtkFactor}} objects.}
}
\author{Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod and Juhui WANG, MIA-jouy, INRA}
\examples{

# Create an object of the class mtkExpFactor
	x1 <- make.mtkFactor(name="x1", distribName="unif",
	             distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
                     distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
                     distribPara=list(min=-pi, max=pi))
	ishi.factors <- mtkExpFactors(list(x1,x2,x3))

}
