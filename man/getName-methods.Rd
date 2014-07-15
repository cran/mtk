\name{getName-methods}
\alias{getName-methods}
\alias{getName}
\title{The \code{getName} method}
\description{Returns the name of the object or a process.}
\usage{getName(this)}
\value{a string}
\arguments{
\item{this}{the underlying object  to proceed.}
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\examples{
# just a method to access to the name of the underlying object or process

# Create an object of the 'mtkFeature' class.

f <- mtkFeature(name="x", type="double", val=0.0)

getName(f) # gives 'x'
}
