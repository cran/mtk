\name{mtkPLMMAnalyser-class}
\docType{class}
\alias{mtkPLMMAnalyser-class}
\alias{is.ready,mtkPLMMAnalyser-method}
\alias{setReady,mtkPLMMAnalyser,logical-method}
\alias{is.finished,mtkPLMMAnalyser-method}
\alias{setState,mtkPLMMAnalyser,logical-method}
\alias{setName,mtkPLMMAnalyser,character-method}
\alias{setParameters,mtkPLMMAnalyser,vector-method}
\alias{getParameters,mtkPLMMAnalyser-method}
\alias{getResult,mtkPLMMAnalyser-method}
\alias{getData,mtkPLMMAnalyser-method}
\alias{serializeOn,mtkPLMMAnalyser-method}
\alias{run,mtkPLMMAnalyser,mtkExpWorkflow-method}
\alias{summary,mtkPLMMAnalyser-method}
\alias{print,mtkPLMMAnalyser-method}
\alias{plot,mtkPLMMAnalyser-method}
\alias{report,mtkPLMMAnalyser-method}

\title{The \code{mtkPLMMAnalyser} class}

\description{
The \code{mtkPLMMAnalyser} class is a sub-class of the  class \code{mtkAnalyser}.
 It implements the sensitivity analysis method PLMM and provides all the slots and methods defined in the class \code{mtkAnalyser}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyser}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkPLMMAnalyser]{mtkPLMMAnalyser}}}{signature(mtkParameters = NULL, listParameters = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "analyze".}
\item{\code{protocol}:}{(\code{\link{character}}) always takes the string "R".}
\item{\code{site}:}{(\code{\link{character}}) always takes the string "mtk".}
\item{\code{service}:}{(\code{\link{character}}) always takes the string "PLMM".}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkPLMMAnalyser", name = "character"): Not used, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkPLMMAnalyser", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkPLMMAnalyser"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkPLMMAnalyser"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkPLMMAnalyser", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkPLMMAnalyser"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkPLMMAnalyser", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkPLMMAnalyser"): Returns the results produced by the process as a [\code{\linkS4class{mtkPLMMAnalyserResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkPLMMAnalyser"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkPLMMAnalyser"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkPLMMAnalyser", context= "mtkExpWorkflow"): Generates the experimental design by sampling the factors.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkPLMMAnalyser"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkPLMMAnalyser"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkPLMMAnalyser"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkPLMMAnalyser"): Reports the results produced by the process.}
}}
\author{Rober Faivre, MIA-Toulouse, INRA, Contact: faivre@toulouse.inra.fr, Juhui WANG, MIA-Jouy, Inra,  }

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# see examples with help(PLMM)

}

