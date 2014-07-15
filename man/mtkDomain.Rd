\name{mtkDomain}
\alias{mtkDomain}
\title{The constructor of the class \code{\linkS4class{mtkDomain}}}
\description{
The constructor of the class  \code{\linkS4class{mtkDomain}}.
}
\usage{
	mtkDomain(distributionName="unknown",domainNominalValue=0, 
 			  distributionParameters=list())
}
\value{an object of the \code{\linkS4class{mtkDomain}} class}

\arguments{
\item{distributionName}{a string corresponding to the distribution name associated with the domain.}
\item{domainNominalValue}{an object of the \code{\linkS4class{mtkValue}} class or information allowing to create an object of the \code{\linkS4class{mtkValue}} class, used to hold the nominal value of the domain.}
\item{distributionParameters}{a list to hold the parameters of the distribution associated with the domain.}
}
\examples{

# creates a  new domain with a continue distribution
	d <- mtkDomain(distributionName="unif", domainNominalValue=0, 
			distributionParameters = list(max=3, min=0))
	
# creates a  new domain with a discrete distribution
	d <- mtkDomain(distributionName="discrete", domainNominalValue=3, 
			distributionParameters = list(type='categorical',
		 	levels = c(1,2,3,4,5), weights=rep(0.2, 5)))
		
}
