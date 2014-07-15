\name{mtkEvaluator}
\alias{mtkEvaluator}
\title{The constructor of the class \code{mtkEvaluator}}

\description{The constructor}

\usage{mtkEvaluator(protocol = "R", site = "mtk", service = "",
 	parameters = NULL, parametersList = NULL, ready = TRUE,
 	 state = FALSE, result = NULL)
}
\value{an object of the \code{\linkS4class{mtkEvaluator}} class}

\arguments{
\item{protocol}{a string from "http", "system", "R" respectively representing if the process is implemented remotety, locally or as R function.}
\item{site}{the site where the process is implemented if remotely or the package where the process is implemented if as a R function.}
\item{service}{a string corresponding to the name of the method  implemented in the package "mtk" or the service that implements the process if remotely.}
\item{parameters}{a vector of [\code{\linkS4class{mtkParameter}}] representing the parameters necessary to run the process.}
\item{parametersList}{a named list  containing the parameters to pass while calling the process. This gives another way to specify the parameters.}
\item{ready}{a logical to indicate if the process is ready to run.}
\item{state}{a logical to indicate if the process finished running and the results are available.}
\item{result}{an object of the class  [\code{\linkS4class{mtkEvaluatorResult}}] to hold the results produced by the Evaluator.}
}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create an evaluator with the model "Ishigami" implemented in the package "mtk".
 
 	evaluator1 <- mtkEvaluator(service="Ishigami")
 
# Create an evaluator avec the model "WWDM"  implemented in the package "mtk"
 	evaluator2 <- mtkEvaluator(service="WWDM", 
 			parametersList=list(year=3, tout=FALSE))
}
