\name{mtkLevels}
\alias{mtkLevels}
\title{The constructor of the class \code{\linkS4class{mtkLevels}}}


\description{
The constructor of the class  \code{\linkS4class{mtkLevels}}.
}
\usage{
mtkLevels(type = "categorical", levels=vector(), weights=numeric(0))
}
\value{an object of the \code{\linkS4class{mtkLevels}} class}

\arguments{
\item{type}{a string to specify the type of the discrete distribution: categorical, qualitative, etc. }
\item{levels}{ a vector of levels for a discrete domain.}
\item{weights}{a vector of numeric values used to weight the levels. }
}
\author{Juhui WANG, MIA-jouy, INRA}

\examples{
# creates an object of the class mtkLevel
l1 <- mtkLevels(type="qualitative",levels = c("x", "y"), weights=c(0.5, 0.5))
l2 <- mtkLevels(levels = c("a", "b", "c"))
l3 <- mtkLevels(levels = c("a", "b", "c"), weights=c(3, 5, 3))
}
