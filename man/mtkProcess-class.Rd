\name{mtkProcess-class}
\docType{class}
\alias{mtkProcess-class}
\alias{is.ready,mtkProcess-method}
\alias{setReady,mtkProcess,logical-method}
\alias{is.finished,mtkProcess-method}
\alias{setState,mtkProcess,logical-method}
\alias{getName,mtkProcess-method}
\alias{setName,mtkProcess,character-method}
\alias{setParameters,mtkProcess,vector-method}
\alias{getParameters,mtkProcess-method}
\alias{getResult,mtkProcess-method}
\alias{getData,mtkProcess-method}
\alias{serializeOn,mtkProcess-method}
\alias{run,mtkProcess,mtkExpWorkflow-method}
\alias{report,mtkProcess-method}


\title{The \code{mtkProcess} class}

\description{
The \code{mtkProcess}  is a class to represent the processes managed within the workflow. It provides
 a generic mechanism for conceptualizing the common behavior of the processes used in experimental design, model simulation and  sensitivity analysis.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{}
\item{Direct Known Subclasses :}{\code{\link[=mtkDesigner-class]{mtkDesigner}},\code{\link[=mtkEvaluator-class]{mtkEvaluator}}, \code{\link[=mtkAnalyser-class]{mtkAnalyser}} }
}}

\section{Constructor}{
\describe{
\item{\code{mtkProcess}}{signature(name, protocol = "R", site = "mtk", service = "", parameters = NULL, ready = FALSE, state = FALSE, result = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}}) a string to name the step of the analysis: "design", "evaluate" or "analyze".}
\item{\code{protocol}:}{(\code{\link{character}}) a string to name the protocol used to run the process: "http", "system", "R", etc.}
\item{\code{site}:}{(\code{\link{character}}) a string to indicate where the service is located: "mtk", URI, etc.}
\item{\code{service}:}{(\code{\link{character}}) a string to name the service to invoke.}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to keep the results produced by the process}
}}

\section{Methods}{
\describe{
\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkProcess", name = "character"): Gives a name to the process.}
\item{\code{\link[=getName-methods]{getName}}}{signature(this = "mtkProcess"): Returns the name of the process.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkProcess", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkProcess"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature(this = "mtkProcess"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkProcess", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkProcess"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkProcess", state = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkProcess"): Returns the results produced by the process as a \code{mtkResult}.}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkProcess") : Returns the results produced by the process as a data frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkProcess"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkProcess", context= "mtkExpWorkflow"): Runs the process.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkProcess", \dots): Displays a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkProcess"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkProcess", y, \dots ): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkProcess"): Reports the results produced by the process.}
}}

\section{Details}{
The \code{\linkS4class{mtkProcess}} class is a virtual class to manage the generic properties of processes involved in the "mtk" package.

For details uses, see examples from \code{help(mtkNativeDesigner)}, \code{help(mtkNativeEvaluator)}, \code{help(mtkNativeAnalyser)}, .
}
\author{Juhui WANG, MIA-Jouy, Inra, Juhui.Wang@jouy.inra.fr }

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# see examples with help(mtkNativeDesigner)

}
