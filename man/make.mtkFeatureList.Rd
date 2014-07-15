\name{make.mtkFeatureList}
\alias{make.mtkFeatureList}
\title{The \code{make.mtkFeatureList} function}
\description{Creates a list of \code{\linkS4class{mtkFeature}} elements from a simple named list.}
\usage{make.mtkFeatureList(x=list())}
\value{a list of objects from the class \code{\linkS4class{mtkFeature}}.}
\arguments{
\item{x}{a named list.}
}
\author{Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod and Juhui WANG, MIA-jouy, INRA}

\examples{

# Create a list of mtkFeature for the Features: min, max, shape.
	make.mtkFeatureList(list(min=-1,max=+1,shape="square"))
}
