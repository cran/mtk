\name{mtkParameter}
\alias{mtkParameter}
\title{The constructor of the class \code{\linkS4class{mtkParameter}}}
\description{The constructor of the class  \code{\linkS4class{mtkParameter}}. See alos \code{\link{make.mtkParameterList}}}
\usage{
mtkParameter(name='unknown', type='logical', val=NULL)
}
\value{an object of the \code{\linkS4class{mtkParameter}} class}
\arguments{
\item{name}{(\code{\link{character}}) the name of the parameter.}
\item{type}{(\code{\link{character}}) the type of the parameter such as 'numeric', 'double', 'logical', etc..}
\item{val}{(\code{\link{ANY}}) the value of the parameter.}
}

\author{Juhui WANG, MIA-jouy, INRA}

\examples{
# Create an object of the 'mtkParameter' class.

p <- mtkParameter(name="x", type="double", val=0.0)

# We usually use the 'make.mtkParameterList()' function to define 
# a list of 'mtkParameter' instead of the constructor 
# of the 'mtkParameter' class
	flist <- make.mtkParameterList(x=list(min=-1,max=+1))

}
