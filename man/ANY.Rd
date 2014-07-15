\name{ANY}
\docType{data}
\alias{ANY}
\title{The ANY class}
\description{
ANY is a data type to represent any S4 class.
}

\details{ S4 implements the ANY class, but does not document it.
}

\examples{
# creates a new class with "ANY"
setClass(Class="mtkProcess",
		
		representation=representation(
				name="character",
				protocol="character",
				site="character",
				service="character",
				parameters="ANY", 
				ready="logical",
				state="logical",
				result="ANY"
		),
		
		prototype=prototype(parameters=NULL, ready=FALSE,
		                    state=FALSE, result=NULL)

)
}
