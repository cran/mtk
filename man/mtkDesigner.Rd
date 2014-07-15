\name{mtkDesigner}
\alias{mtkDesigner}
\title{The constructor of the class \code{mtkDesigner}}


\description{The constructor}
\usage{mtkDesigner(protocol = "R", site = "mtk", service = "", 
 		parameters = NULL, parametersList = NULL, ready = TRUE, 
 		state = FALSE, result = NULL)
}
\value{an object of the \code{\linkS4class{mtkDesigner}} class}

\arguments{
\item{protocol}{(\code{\link{character}}) a string from "http", "system", "R" respectively representing if the process is implemented remotely, locally or as R function.}
\item{site}{(\code{\link{character}}) a string to indicate where the service is located.}
\item{service}{(\code{\link{character}}) a string to name the method or the service (if remotely) to invoke.}
\item{parameters}{a vector of [\code{\linkS4class{mtkParameter}}] representing the parameters necessary to run the process.}
\item{parametersList}{a named list  containing the parameters to pass while calling the process. This gives another way to specify the parameters.}
\item{ready}{a logical to indicate if the process is ready to run.}
\item{state}{a logical to indicate if the process finished running and the results are available.}
\item{result}{an object of a class derived from  [\code{\linkS4class{mtkDesignerResult}}] to hold the results produced by the designer.}
}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{
J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.
}

\examples{

# Create a designer with the method "Morris" 
# implemented in the package "mtk"
	designer <- mtkDesigner(service="Morris", 
		parametersList=list(nboot=20))
}
