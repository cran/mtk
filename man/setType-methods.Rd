\name{setType-methods}
\alias{setType-methods}
\alias{setType}
\title{The \code{setType} method}
\description{Gives a new type to the underlying object.}
\usage{setType(this, type)}
\value{invisble()}
\arguments{
\item{this}{the underlying object}
\item{type}{a string indicating the new type for the data. It may be "numeric", "integer", "double", etc.}
}
\section{Details}{
Used by many classes. The behavior depends on the underlying class.
}

\author{Juhui WANG, MIA-jouy, INRA}

\examples{

# Define a factor
	x1 <- make.mtkFactor(name="x1", type="double", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
		 
# Change the numeric value of the factor to "numeric" type.

	setType(x1, type="numeric")
	
# Create a  new object of mtkValue
d <- mtkValue("a", "double", 0)

# Change the numeric value of the object to "numeric" type.
setType(d, "numeric")
}
