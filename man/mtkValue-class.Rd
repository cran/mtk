\name{mtkValue-class}
\docType{class}
\alias{mtkValue-class}
\alias{getName,mtkValue-method}
\alias{getValue,mtkValue-method}
\alias{getType,mtkValue-method}
\alias{setName,mtkValue,character-method}
\alias{setValue,mtkValue,ANY-method}
\alias{setValue,mtkValue-method}
\alias{setType,mtkValue,character-method}
\alias{show,mtkValue-method}
\alias{print,mtkValue-method}

\title{The \code{mtkValue} class}

\description{
The \code{mtkValue} class is a virtual class used to manage a triple (name, type, value).
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{}
\item{Direct Known Subclasses :}{\code{\link[=mtkParameter-class]{mtkParameter}}, code{\link[=mtkFeature-class]{mtkFeature}}}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkValue]{mtkValue}}}{signature(name='unknown', type='', val=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}}) the name of the variable.}
\item{\code{type}:}{(\code{\link{character}}) the type of the variable.}
\item{\code{val}:}{(\code{\link{ANY}}) the value of the variable in the right type. It may be a single value or a vector of values}
}}

\section{Methods}{
\describe{
\item{\code{\link[=getName-methods]{getName}}}{signature( this = "mtkValue"): Returns the value of the slot "name".}
\item{\code{\link[=getValue-methods]{getValue}}}{signature( this = "mtkValue"): Returns the value of the slot "val".}
\item{\code{\link[=getType-methods]{getType}}}{signature(this = "mtkValue"): Returns the value of the slot "type".}
\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkValue", name = "character"): Gives a new value to the slot "name".}
\item{\code{\link[=setValue-methods]{setValue}}}{signature(this = "mtkValue", type = "ANY"): Gives a new value to the slot "val".}
\item{\code{\link[=setType-methods]{setType}}}{signature(this = "mtkValue", type = "character"): Gives a new value to the slot "type".}

\item{\code{\link[=show]{show}}}{signature( object = "mtkValue"): Prints a report of the data managed by the underlying object.}
\item{\code{\link[=print]{print}}}{signature(x = "mtkValue"): Prints the information managed by the underlying object.}
}}
\author{Juhui WANG, MIA-jouy, INRA}

\examples{
# Create a  new object of 'mtkValue'
d <- mtkValue("a", "double", c(0,1))
getType(d) # gives "double"
getName(d) # gives "a"
getValue(d) # gives (0, 1)

setType(d, 'character')
getValue(d) # gives ("0", "1")

setValue(d, "3.14")
getValue(d) # gives "3.14"
}

