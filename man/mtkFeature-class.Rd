\name{mtkFeature-class}
\docType{class}
\alias{mtkFeature-class}
\alias{getName,mtkFeature-method}
\alias{getValue,mtkFeature-method}
\alias{getType,mtkFeature-method}
\alias{setName,mtkFeature,character-method}
\alias{setValue,mtkFeature,ANY-method}
\alias{setType,mtkFeature,character-method}
\alias{show,mtkFeature-method}
\alias{print,mtkFeature-method}

\title{The \code{mtkFeature} class}
\description{
The \code{mtkFeature} class is a class used to manage the features associated with  a factor.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\link[=mtkValue-class]{mtkValue}}}
\item{Direct Known Subclasses :}{}
}}
\section{Constructor}{
\describe{
\item{\code{\link[=mtkFeature]{mtkFeature}}}{signature(name='unknown', type='logical', val=NULL)}
\item{\code{\link[=mtkFeature]{make.mtkFeatureList}}}{signature(x=list())}
}}


\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}}) the name of the feature.}
\item{\code{type}:}{(\code{\link{character}}) the type of value managed by the feature.}
\item{\code{val}:}{(\code{\link{ANY}}) the value of the feature in the right type.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=getName-methods]{getName}}}{signature( this = "mtkFeature"): Returns the value of the slot "name".}
\item{\code{\link[=getValue-methods]{getValue}}}{signature( this = "mtkFeature"): Returns the value of the slot "val".}
\item{\code{\link[=getType-methods]{getType}}}{signature(this = "mtkFeature"): Returns the value of the slot "type".}
\item{\code{\link[=setName-methods]{setName}}}{signature( this = "mtkFeature", name = "character"): Gives a new value to the slot "name".}
\item{\code{\link[=setType-methods]{setType}}}{signature( this = "mtkFeature", type = "character"): Gives a new value to the slot "type".}
\item{\code{\link[=setValue-methods]{setValue}}}{signature(this = "mtkFeature", val = "ANY"): Gives a new value to  the slot "val".}

\item{\code{\link[=show]{show}}}{signature( object = "mtkFeature"): Prints a report of the data managed by the underlying object.}
\item{\code{\link[=print]{print}}}{signature(x = "mtkFeature"): Prints the information managed by the underlying object.}
}}
\author{Juhui WANG, MIA-jouy, INRA}

\examples{
# Create an object of the 'mtkFeature' class.

f <- mtkFeature(name="x", type="double", val=0.0)

# We usually use the make.mtkFeatureList function to define a list of mtkFeature
# instead of the constructor of the mtkFeature class

	flist <- make.mtkFeatureList(list(min=-1,max=+1,shape="hello"))
}

