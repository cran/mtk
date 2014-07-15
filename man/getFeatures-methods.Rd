\name{getFeatures-methods}
\alias{getFeatures-methods}
\alias{getFeatures}
\title{The \code{getFeatures} method}
\description{Returns the features associated with the underlying factor.}
\usage{getFeatures(this)}
\value{a named list.}
\arguments{
\item{this}{an object of the \code{\linkS4class{mtkFactor}} class}
}

\author{Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod and Juhui WANG, MIA-jouy, INRA}
\examples{
# Define a factor
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))

# Define a list of features and associate it with the factor
	features <- make.mtkFeatureList(list(pre=5, post=60))
	setFeatures(x1, features)

# Return the features associated with the factor
	fl <- getFeatures(x1)
}

