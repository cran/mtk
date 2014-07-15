\name{make.mtkFactor}
\alias{make.mtkFactor}
\title{The \code{make.mtkFactor} function}
\description{Creates a new input factor and specifies its uncertainty distribution.}
\usage{make.mtkFactor(name="unkown", id="unkown", unit="", type="",
		 nominal=NA, distribName='unknown', distribPara=list(), features=list())
	 }
\value{an object of class \code{\linkS4class{mtkFactor}}.}
\arguments{
\item{name}{the name of the input factor.}
\item{id}{the name of the factor in the simulation code, if different from \code{name} (optional).}
\item{unit}{the measurement unit of the factor values (optional). This can be used in graphics or reports, for example.}
\item{type}{the data-type of the factor's values (optional).}
\item{nominal}{the nominal value of the factor.}
\item{distribName}{the name of the probability distribution describing the factor's uncertainty.}
\item{distribPara}{the list of distribution parameters.}
\item{features}{the list of factor's features.}
}
\details{ The \code{distribName} argument must use the R terminology, for example \code{norm} for the normal distribution or \code{unif} for the uniform one; see \code{help(distributions)}.}

\author{Juhui WANG, MIA-jouy, INRA, Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod}

\examples{

# Define a new continuous factor 
	make.mtkFactor("A", distribName="unif", distribPara=list(min=0,max=1))
# Define a new discrete factor 
	make.mtkFactor("D", distribName="discrete", distribPara =
				list(type='categorical', levels=c('a','b','c'), 
				weights=rep(0.33,3))
				)
	
}

