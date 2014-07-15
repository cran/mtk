\name{mtkAnalyser-class}
\docType{class}
\alias{mtkAnalyser-class}
\alias{is.ready,mtkAnalyser-method}
\alias{setReady,mtkAnalyser,logical-method}
\alias{is.finished,mtkAnalyser-method}
\alias{setState,mtkAnalyser,logical-method}
\alias{setName,mtkAnalyser,character-method}
\alias{setParameters,mtkAnalyser,vector-method}
\alias{getParameters,mtkAnalyser-method}
\alias{getResult,mtkAnalyser-method}
\alias{getData,mtkAnalyser-method}
\alias{serializeOn,mtkAnalyser-method}
\alias{run,mtkAnalyser,mtkExpWorkflow-method}
\alias{summary,mtkAnalyser-method}
\alias{print,mtkAnalyser-method}
\alias{plot,mtkAnalyser-method}
\alias{report,mtkAnalyser-method}

\title{The \code{mtkAnalyser} class}

\description{
The \code{mtkAnalyser} class is a sub-class of the  class \code{\linkS4class{mtkProcess}}  used to manage 
the sensitivity analysis process. It provides all the slots and methods defined in the class \code{\linkS4class{mtkProcess}}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkProcess}}}
\item{Direct Known Subclasses :}{\code{\link[=mtkNativeAnalyser-class]{mtkNativeAnalyser}},\code{\link[=mtkMorrisAnalyser-class]{mtkMorrisAnalyser}}, etc.}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkAnalyser]{mtkAnalyser}}}{signature(protocol="R", site="mtk", service="", parameters=NULL,
			 parametersList=NULL, ready=TRUE, state=FALSE, result=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  a string to name the processing type. Here, it always takes  "analyze".}
\item{\code{protocol}:}{(\code{\link{character}}) a string to name the protocol used to run the process: http, system, R, etc.}
\item{\code{site}:}{(\code{\link{character}}) a string to indicate where the service is located.}
\item{\code{service}:}{(\code{\link{character}}) a string to name the method or the service (if remotely) to invoke.}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of \code{\linkS4class{mtkParameter}} containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) NULL or an object of the class \code{\linkS4class{mtkAnalyserResult}} to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkAnalyser", name = "character"): Not used, just inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkAnalyser", f = "vector"): Assigns a new vector of  parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkAnalyser"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkAnalyser"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkAnalyser", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkAnalyser"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkAnalyser", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkAnalyser"): Returns the results produced by the process as a \code{\linkS4class{mtkAnalyserResult}}.}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkAnalyser"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkAnalyser"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkAnalyser", context= "mtkExpWorkflow"): Runs the sensitivity analysis on the model defined in the context.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkAnalyser"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkAnalyser"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkAnalyser"): Builds a plot of the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkAnalyser"): Reports the results produced by the process.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{


# Creates an analyser avec the method "Morris" 
# implemented in the package "mtk".
	
	analyser <- mtkAnalyser(service="Morris",
		 parametersList=list(nboot=20))
}

