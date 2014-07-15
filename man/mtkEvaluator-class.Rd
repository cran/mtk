\name{mtkEvaluator-class}
\docType{class}
\alias{mtkEvaluator-class}
\alias{is.ready,mtkEvaluator-method}
\alias{setReady,mtkEvaluator,logical-method}
\alias{is.finished,mtkEvaluator-method}
\alias{setState,mtkEvaluator,logical-method}
\alias{setName,mtkEvaluator,character-method}
\alias{setParameters,mtkEvaluator,vector-method}
\alias{getParameters,mtkEvaluator-method}
\alias{getResult,mtkEvaluator-method}
\alias{getData,mtkEvaluator-method}
\alias{serializeOn,mtkEvaluator-method}
\alias{run,mtkEvaluator,mtkExpWorkflow-method}
\alias{summary,mtkEvaluator-method}
\alias{print,mtkEvaluator-method}
\alias{plot,mtkEvaluator-method}
\alias{report,mtkEvaluator-method}

\title{The \code{mtkEvaluator} class}

\description{
The \code{mtkEvaluator} class is a sub-class of the  class \code{\linkS4class{mtkProcess}}  used to manage 
the model simulation. It provides all the slots and methods defined in the class \code{\linkS4class{mtkProcess}}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkProcess}}}
\item{Direct Known Subclasses :}{\code{\link[=mtkNativeEvaluator-class]{mtkNativeEvaluator}},\code{\link[=mtkWWDMEvaluator-class]{mtkWWDMEvaluator}}, etc.}
}}

\section{Constructor}{
\describe{
\item{mtkEvaluator}{signature(protocol = "R", site = "mtk", service = "", parameters = NULL, parametersList = NULL, ready = TRUE, state = FALSE, result = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "evaluate".}
\item{\code{protocol}:}{(\code{\link{character}}) a string to name the protocol used to run the process: http, system, R, etc.}
\item{\code{site}:}{(\code{\link{character}}) a string to indicate where the service is located.}
\item{\code{service}:}{(\code{\link{character}}) a string to name the service to invoke.}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkEvaluator", name = "character"): Not used, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkEvaluator", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkEvaluator"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkEvaluator"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkEvaluator", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkEvaluator"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkEvaluator", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkEvaluator"): Returns the results produced by the process as a [\code{\linkS4class{mtkEvaluatorResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkEvaluator"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkEvaluator"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkEvaluator", context= "mtkExpWorkflow"): Runs the model with the experimental design defined in the context.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkEvaluator"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkEvaluator"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkEvaluator"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkEvaluator"): Reports the results produced by the process.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create an evaluator with the model "Ishigami" 
# implemented in the package "mtk".
 	 evaluator1 <- mtkEvaluator(service="Ishigami")
 
# Create an evaluator with the model "WWDM"
# implemented in the package "mtk"
	 evaluator2 <- mtkEvaluator(service="WWDM", 
 			parametersList=list(year=3, tout=FALSE))
}

