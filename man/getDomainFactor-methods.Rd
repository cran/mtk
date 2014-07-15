\name{getDomain-methods}
\alias{getDomain-methods}
\alias{getDomain}
\title{The \code{getDomain} method}
\description{Returns the domain associated with the factor.}
\usage{getDomain(this)}
\value{an object of the class \code{mtkDomain}}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkFactor}} .}
}
\author{Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod and Juhui WANG, MIA-jouy, INRA}
\examples{
# Define a factor
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	
# Return the  uncertainty domain associated with the factor
	dom <- getDomain(x1)
}

