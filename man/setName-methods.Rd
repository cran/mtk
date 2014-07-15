\name{setName-methods}
\alias{setName-methods}
\alias{setName}
\title{The \code{setName} method}
\description{Gives a new name to the underlying object}
\usage{setName(this, name)}
\value{invisble()}
\arguments{
\item{this}{the underlying object}
\item{name}{a string indicating the new name.}
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

	setName(x1, name="mit")
	
# Create a  new object of mtkValue
d <- mtkValue("a", "double", 0)

# Change the name of the object to "x" type.
setName(d, "x")
}
