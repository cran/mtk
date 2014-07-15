\name{setFeatures-methods}
\alias{setFeatures-methods}
\alias{setFeatures}
\title{The \code{setFeatures} method}
\description{Sets the features to an object of the \code{\linkS4class{mtkFactor}} class.}
\usage{setFeatures(this, aFList)}
\value{invisible}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkFactor}}}
\item{aFList}{a list of \code{\linkS4class{mtkFeature}} objects.}
}
\author{Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod and Juhui WANG, MIA-jouy, INRA}

\examples{

# Build an object of the "mtkFactor" class
	x1 <- make.mtkFactor(name="x1", type="double", nominal=0, distribName="unif",
		 distribPara=list(min=-pi, max=pi))
# Define the list of features
	f <- make.mtkFeatureList(list(f=4.5,c=+6,shape="parabolic"))
	
# Assign the features to the factor

	setFeatures(x1,f)
}
