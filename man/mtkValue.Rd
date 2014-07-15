\name{mtkValue}
\alias{mtkValue}
\title{The constructor of the class \code{\linkS4class{mtkValue}}}


\description{The constructor}
\usage{
mtkValue(name='unknown', type='', val=NULL)
}
\value{an object of the \code{\linkS4class{mtkValue}} class}

\arguments{
\item{name}{the name of the variable.}
\item{type}{the type of the variable, i.e. double, integer, character, logical, null, etc.}
\item{val}{the value of the variable. It may be a single or a vector of values.}
}
\author{Juhui WANG, MIA-jouy, INRA}

\examples{
# Create an object of 'mtkValue'

triple <- mtkValue('a', 'double', c(2.5,3.0))
}
