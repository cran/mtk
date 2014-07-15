\name{getParameters-methods}
\alias{getParameters-methods}
\alias{getParameters}
\title{The \code{getParameters} method}
\description{Returns the vector of parameters and converts it to a named list.}
\usage{getParameters(this)}
\value{a named list in which each element corresponds to a parameter. The vector of parameters is converted into a named list such as 
(name of parameter 1 = value of parameter 1, name of parameter 2 = value of parameter 2, ...).}
\arguments{
\item{this}{the underlying object of class \code{\linkS4class{mtkProcess}} or its sub-classes.}
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}
\examples{

# Create a native designer avec the method "Morris"
# implemented in the package "mtk"

	designer <- mtkNativeDesigner(design="Morris", information=list(size=20))

# Return the parameters as named list
	getParameters(designer)
}
