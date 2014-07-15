\name{mtkFeature}
\alias{mtkFeature}
\title{The constructor of the class \code{\linkS4class{mtkFeature}}}


\description{
The constructor of the class  \code{\linkS4class{mtkFeature}}. See also \code{\link{make.mtkFeatureList}}.
}
\usage{
mtkFeature(name='unknown', type='logical', val=NULL)
}
\value{an object of the \code{\linkS4class{mtkFeature}} class}
\arguments{
\item{name}{(\code{\link{character}}) the name of the feature.}
\item{type}{(\code{\link{character}}) the data type managed by the feature such as 'numeric', 'double', 'logical', etc..}
\item{val}{(\code{\link{ANY}}) the value of the feature.}
}

\author{Juhui WANG, MIA-jouy, INRA}


\examples{
# creates a feature "he"
	f <- mtkFeature(name='he', type ='character', val = 'pekin')
	
# We usually use the 'make.mtkFeatureList()' function to define 
# a list of 'mtkFeature' instead of the constructor 
# of the 'mtkFeature' class

	flist <- make.mtkFeatureList(list(min=-1,max=+1,shape="hello"))
}
