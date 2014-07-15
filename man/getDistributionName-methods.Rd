\name{getDistributionName-methods}
\alias{getDistributionName-methods}
\alias{getDistributionName}
\title{The \code{getDistributionName} method}
\description{Returns the name of the distribution associated with a domain or a factor.}
\usage{getDistributionName(this)}
\value{a string.}
\arguments{
\item{this}{the underlying object of the class to proceed (\code{\linkS4class{mtkDomain}} or \code{\linkS4class{mtkFactor}}).}
}
\author{Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod and Juhui WANG, MIA-jouy, INRA}
\examples{

# Create a domain and get the name of its distribution 
	d <- mtkDomain(distributionName="unif", domainNominalValue=0)
	distribution <- getDistributionName(d)

# For more information, see examples for the mtkDomain or
# mtkFactor classes.

}
