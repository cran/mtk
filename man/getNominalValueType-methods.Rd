\name{getNominalValueType-methods}
\alias{getNominalValueType-methods}
\alias{getNominalValueType}
\title{The \code{getNominalValueType} method}
\description{Returns the data type of the nominal value associated with the uncertainty domain of a factor.}
\usage{getNominalValueType(this)}
\value{a string}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkDomain}}.}
}
\author{Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod and Juhui WANG, MIA-jouy, INRA}
\examples{
# Create a domain and get the type of its nominal value
	d <- mtkDomain(distributionName="unif", domainNominalValue=0.0)
	valueType <- getNominalValueType(d)

# For more information, see examples for the mtkDomain or
# mtkFactor classes.


}
