\name{mtkParameter-class}
\docType{class}
\alias{mtkParameter-class}
\alias{getName,mtkParameter-method}
\alias{getValue,mtkParameter-method}
\alias{getType,mtkParameter-method}
\alias{setType,mtkParameter,character-method}
\alias{setName,mtkParameter,character-method}
\alias{setValue,mtkParameter,ANY-method}

\alias{show,mtkParameter-method}
\alias{print,mtkParameter-method}

\title{The \code{mtkParameter} class}

\description{
The \code{mtkParameter} class is a class used to manage the parameter concept.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\link[=mtkValue-class]{mtkValue}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkParameter]{mtkParameter}}}{signature(name='unknown', type='logical', val=NULL)}
\item{\code{\link[=mtkParameter]{make.mtkParameterList}}}{signature(x=list())}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}}) the name of the parameter.}
\item{\code{type}:}{(\code{\link{character}}) the type of the parameter.}
\item{\code{val}:}{(\code{\link{ANY}}) the value of the parameter.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=getName-methods]{getName}}}{signature( this = "mtkParameter"): Returns the value of the slot "name".}
\item{\code{\link[=getValue-methods]{getValue}}}{signature( this = "mtkParameter"): Returns the value of the slot "val".}
\item{\code{\link[=getType-methods]{getType}}}{signature(this = "mtkParameter"): Returns the value of the slot "type".}
\item{\code{\link[=setName-methods]{setName}}}{signature( this = "mtkParameter", name="character"): Gives a new value to the slot "name".}
\item{\code{\link[=setValue-methods]{setValue}}}{signature( this = "mtkParameter", val="ANY"): Gives a new value to the slot "val".}
\item{\code{\link[=setType-methods]{setType}}}{signature(this = "mtkParameter", type="character"): Gives a new value to  the slot "type".}

\item{\code{\link[=show]{show}}}{signature( object = "mtkParameter"): Prints a report of the data managed by the underlying object.}
\item{\code{\link[=print]{print}}}{signature(x = "mtkParameter"): Prints the information managed by the underlying object.}
}}
\author{Juhui WANG, MIA-jouy, INRA}

\examples{
# Create an object of the 'mtkParameter' class.

	p <- mtkParameter(name="x", type="double", val=0.0)

# We usually use the 'make.mtkParameterList()' function to define a list of
# 'mtkParameter' instead of the constructor 
# of the 'mtkParameter' class
	plist <- make.mtkParameterList(list(min=-1,max=+1,shape="hello"))
}


