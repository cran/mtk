\name{mtkSystemEvaluator-class}
\docType{class}
\alias{mtkSystemEvaluator-class}
\alias{is.ready,mtkSystemEvaluator-method}
\alias{setReady,mtkSystemEvaluator,logical-method}
\alias{is.finished,mtkSystemEvaluator-method}
\alias{setState,mtkSystemEvaluator,logical-method}
\alias{setName,mtkSystemEvaluator,character-method}
\alias{setParameters,mtkSystemEvaluator,vector-method}
\alias{getParameters,mtkSystemEvaluator-method}
\alias{getResult,mtkSystemEvaluator-method}
\alias{getData,mtkSystemEvaluator-method}
\alias{serializeOn,mtkSystemEvaluator-method}
\alias{run,mtkSystemEvaluator,mtkExpWorkflow-method}
\alias{summary,mtkSystemEvaluator-method}
\alias{print,mtkSystemEvaluator-method}
\alias{plot,mtkSystemEvaluator-method}
\alias{report,mtkSystemEvaluator-method}

\title{The \code{mtkSystemEvaluator} class}

\description{
The \code{mtkSystemEvaluator} class is a sub-class of the  class \code{\linkS4class{mtkEvaluator}}  used to manage 
the simulation of the model implemented as a system application.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkEvaluator}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkSystemEvaluator]{mtkSystemEvaluator}}}{signature( service="",mtkParameters=NULL,listParameters = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "evaluate".}
\item{\code{protocol}:}{(\code{\link{character}}) always takes the string  "system".}
\item{\code{site}:}{(\code{\link{character}})  not used here.}
\item{\code{service}:}{(\code{\link{character}}) a string to invoke the system command implementing the model. }
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while invoking the system command.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkSystemEvaluator", name = "character"): Not used, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkSystemEvaluator", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkSystemEvaluator"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkSystemEvaluator"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkSystemEvaluator", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkSystemEvaluator"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkSystemEvaluator", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkSystemEvaluator"): Returns the results produced by the process as a [\code{\linkS4class{mtkEvaluatorResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkSystemEvaluator"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkSystemEvaluator"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkSystemEvaluator", context= "mtkExpWorkflow"): runs the simulation.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkSystemEvaluator"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkSystemEvaluator"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkSystemEvaluator"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkSystemEvaluator"): Reports the results produced by the process.}
}}

\author{Juhui WANG, MIA-Jouy, Inra, Juhui.Wang@jouy.inra.fr }

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# see examples 
}

