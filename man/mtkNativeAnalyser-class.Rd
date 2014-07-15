\name{mtkNativeAnalyser-class}
\docType{class}
\alias{mtkNativeAnalyser-class}
\alias{is.ready,mtkNativeAnalyser-method}
\alias{setReady,mtkNativeAnalyser,logical-method}
\alias{is.finished,mtkNativeAnalyser-method}
\alias{setState,mtkNativeAnalyser,logical-method}
\alias{setName,mtkNativeAnalyser,character-method}
\alias{setParameters,mtkNativeAnalyser,vector-method}
\alias{getParameters,mtkNativeAnalyser-method}
\alias{getResult,mtkNativeAnalyser-method}
\alias{getData,mtkNativeAnalyser-method}
\alias{serializeOn,mtkNativeAnalyser-method}
\alias{run,mtkNativeAnalyser,mtkExpWorkflow-method}
\alias{summary,mtkNativeAnalyser-method}
\alias{print,mtkNativeAnalyser-method}
\alias{plot,mtkNativeAnalyser-method}
\alias{report,mtkNativeAnalyser-method}

\title{The \code{mtkNativeAnalyser} class}

\description{
The \code{mtkNativeAnalyser} class is a sub-class of the  class \code{\linkS4class{mtkAnalyser}}  used to manage 
the sensitivity analysis task implemented locally (i.e. tasks don't need to call services from the Web). It provides all the slots and methods defined in the class \code{\linkS4class{mtkAnalyser}}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyser}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkNativeAnalyser]{mtkNativeAnalyser}}}{signature(analyze=NULL, X=NULL, information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{analyze}:}{(\code{\link{ANY}})  a string, an R function, or NULL to inform the method to use for the sensitivity analysis.}
\item{\code{name}:}{(\code{\link{character}})  always takes the string "analyze".}
\item{\code{protocol}:}{(\code{\link{character}}) a string to name the protocol used to run the process: http, system, R, etc. Here, it always takes "R".}
\item{\code{site}:}{(\code{\link{character}}) a string to indicate where the service is located.}
\item{\code{service}:}{(\code{\link{character}}) a string to name the service to invoke. Here, it may be a R function or a method implemented in the package "mtk".}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkNativeAnalyser", name = "character"): Not used here, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkNativeAnalyser", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkNativeAnalyser"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkNativeAnalyser"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkNativeAnalyser", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkNativeAnalyser"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkNativeAnalyser", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkNativeAnalyser"): Returns the results produced by the process as a [\code{\linkS4class{mtkAnalyserResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkNativeAnalyser"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkNativeAnalyser"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkNativeAnalyser", context= "mtkExpWorkflow"): Runs the Analyser.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkNativeAnalyser"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkNativeAnalyser"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkNativeAnalyser"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkNativeAnalyser"): Reports the results produced by the process.}
}}
\section{Details}{
We can construct an object of the \code{\linkS4class{mtkNativeAnalyser}} class from the following situations: 
\enumerate{
	\item The analyser is provided within the package "mtk"; 
	\item The analyser is provided as an R function implemented outside the package "mtk";  If so, the R function must produce a result as a named list with two elements: X and information, 
 	where \code{X} is a date.frame containing the analysis result and \code{information} is a named list containing supplementary information about the analysis process.
	\item The results of the model exploration are produced off-line and available as a data.frame. We just want to use the "mtk" package for reporting.
	}
For detail uses, see examples from \code{help(mtkNativeEvaluator)}.
}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create a native analyser with the method "Morris" implemented in the package "mtk"

	analyser <- mtkNativeAnalyser(
		analyze="Morris",
		information=list(nboot=20))
}

