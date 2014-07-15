\name{getMTKFeatures-methods}
\alias{getMTKFeatures-methods}
\alias{getMTKFeatures}
\title{The \code{getMTKFeatures} method}
\description{Returns the features associated with the underlying factor as a list of  \code{\linkS4class{mtkFeature}} objects.}
\usage{getMTKFeatures(this)}
\value{a list of objects of the class \code{\linkS4class{mtkFeature}} }
\arguments{
\item{this}{an object of the \code{\linkS4class{mtkFactor}} class}
}

\author{Juhui WANG, MIA-jouy, INRA}
\examples{
# Define a factor
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))

# Define a list of features and associate it with the factor
	features <- make.mtkFeatureList(list(pre=5, post=60))
	setFeatures(x1, features)

# Return the features associated with the factor
	fl <- getMTKFeatures(x1)
}

