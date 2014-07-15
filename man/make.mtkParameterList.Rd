\name{make.mtkParameterList}
\alias{make.mtkParameterList}
\title{The \code{make.mtkParameterList} function}
\description{Creates a list of \code{\linkS4class{mtkParameter}} elements from a simple named list.}
\usage{make.mtkParameterList(x=list())}
\value{a list of objects from the class \code{\linkS4class{mtkParameter}}.}
\arguments{
\item{x}{a named list.}
}
\author{Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod and Juhui WANG, MIA-jouy, INRA}

\examples{

# Create a list of mtkParameter from a named list for the parameters: min, max, shape.
	make.mtkParameterList(list(min=-1,max=+1,shape="hello"))
}
