\name{mtkLevels-class}
\docType{class}
\alias{mtkLevels-class}

\alias{getType,mtkLevels-method}
\alias{setType,mtkLevels,character-method}
\alias{getLevels,mtkLevels-method}
\alias{setLevels,mtkLevels,vector-method}
\alias{getWeights,mtkLevels-method}
\alias{setWeights,mtkLevels,numeric-method}

\alias{summary,mtkLevels-method}
\alias{show,mtkLevels-method}
\alias{print,mtkLevels-method}

\title{The \code{mtkLevels} class}

\description{
The \code{mtkLevels} class is a class used to manage the weighting levels  associated with  a factor's domain.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkLevels]{mtkLevesl}}}{signature(type = "categorical", levels=vector(), weights=numeric(0))}
}}

\section{Slots}{
\describe{
\item{\code{type}:}{(\code{\link{character}}) a string to give the type of the discrete distribution such as 'categorical', 'qualitative', etc.}
\item{\code{levels}:}{(\code{\link{vector}}) a vector to specify the levels.}
\item{\code{weights}:}{(\code{\link{numeric}}) a numeric vector used to weight the levels.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=getType-methods]{getType}}}{signature(this = "mtkLevels"): Returns the type of the discrete distribution such as 'categorical', 'qualitative', etc .}
\item{\code{\link[=setType-methods]{setType}}}{signature(this = "mtkLevels", type="character"): Assigns a new type to the underlying object.}
\item{\code{\link[=getLevels-methods]{getLevels}}}{signature(this = "mtkLevels"): Returns the vector of the levels.}
\item{\code{\link[=setLevels-methods]{setLevels}}}{signature(this = "mtkLevels", levels = "vector"): Assigns a new vector to the levels.}
\item{\code{\link[=getWeights-methods]{getWeights}}}{signature(this = "mtkLevels"): Returns the vector of the weights.}
\item{\code{\link[=setWeights-methods]{setWeights}}}{signature(this = "mtkLevels", weights = "numeric"): Assigns new  vector to  the weight.}
\item{\code{\link[=print]{print}}}{signature(x = "mtkLevel"): Prints a summarized report about the underlying object of  the class \code{\linkS4class{mtkLevels}}.}
\item{\code{\link[=summary]{summary}}}{signature(object = "mtkLevel"): Gives a summary  about the underlying object.}
\item{\code{\link[=show]{show}}}{signature(object = "mtkLevel"): Displays informations about the underlying object.}
}}

\author{Juhui WANG, MIA-jouy, INRA}

\examples{
# Create an object of the class 'mtkLevels'

	l <- mtkLevels(type='categorical', levels=seq(1:3), weight=rep(0.33, 3))

# Set the levels'name to ('a', 'b', 'c')
	
	setLevels(l, levels=c('a', 'b', 'c'))

}


