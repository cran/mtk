\name{setDomain-methods}
\alias{setDomain-methods}
\alias{setDomain}
\title{The \code{setDomain} method}
\description{Associates a new domain  with the factor.}
\usage{setDomain(this, domain)}
\value{invisible()}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkFactor}} .}
\item{domain}{an object of the class \code{\linkS4class{mtkDomain}} .}
}
\author{ Juhui WANG, MIA-jouy, INRA}
\examples{
# Define a factor
	x1 <- make.mtkFactor(name="x1")

# Define a domain
	d <- mtkDomain(distributionName="unif", 
		 domainNominalValue=0, distributionParameters = list(max=3, min=0))
	
# Use the setDomain to change the domain of the factor
	setDomain(x1,d)
}

