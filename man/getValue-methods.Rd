\name{getValue-methods}
\alias{getValue-methods}
\alias{getValue}
\title{The \code{getValue} method}
\description{Returns the name and the value managed by an object of the  underlying class.}
\usage{getValue(this)}
\value{a named variable}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkValue}} or its sub-classes.}
}
\author{Juhui WANG, MIA-jouy, INRA}
\examples{
# Create an object of the 'mtkValue'
	v <- mtkValue(name="x", type="string", val="2.2")
	
# Fetch the value of the object as a named variable: x = "2.2"

	getValue(v)
}
