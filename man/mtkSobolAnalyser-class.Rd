\name{mtkSobolAnalyser-class}
\docType{class}
\alias{mtkSobolAnalyser-class}
\alias{is.ready,mtkSobolAnalyser-method}
\alias{setReady,mtkSobolAnalyser,logical-method}
\alias{is.finished,mtkSobolAnalyser-method}
\alias{setState,mtkSobolAnalyser,logical-method}
\alias{setName,mtkSobolAnalyser,character-method}
\alias{setParameters,mtkSobolAnalyser,vector-method}
\alias{getParameters,mtkSobolAnalyser-method}
\alias{getResult,mtkSobolAnalyser-method}
\alias{getData,mtkSobolAnalyser-method}
\alias{serializeOn,mtkSobolAnalyser-method}
\alias{run,mtkSobolAnalyser,mtkExpWorkflow-method}
\alias{summary,mtkSobolAnalyser-method}
\alias{print,mtkSobolAnalyser-method}
\alias{plot,mtkSobolAnalyser-method}
\alias{report,mtkSobolAnalyser-method}

\title{The \code{mtkSobolAnalyser} class}

\description{
The \code{mtkSobolAnalyser} class is a sub-class of the  class \code{\linkS4class{mtkAnalyser}}. It implements the sensitivity analysis method \code{Sobol} and provides all the slots and methods defined in the class \code{\linkS4class{mtkAnalyser}}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyser}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkSobolAnalyser]{mtkSobolAnalyser}}}{signature(mtkParameters = NULL, listParameters = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "analyze".}
\item{\code{protocol}:}{(\code{\link{character}}) always takes the string "R".}
\item{\code{site}:}{(\code{\link{character}}) always takes the string "mtk".}
\item{\code{service}:}{(\code{\link{character}}) always takes the string "Sobol".}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{
\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkSobolAnalyser", name = "character"): Not used, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkSobolAnalyser", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkSobolAnalyser"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkSobolAnalyser"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkSobolAnalyser", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkSobolAnalyser"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkSobolAnalyser", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkSobolAnalyser"): Returns the results produced by the process as a [\code{\linkS4class{mtkSobolAnalyserResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkSobolAnalyser"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkSobolAnalyser"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkSobolAnalyser", context= "mtkExpWorkflow"): Generates the experimental design by sampling the factors.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkSobolAnalyser"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkSobolAnalyser"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkSobolAnalyser"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkSobolAnalyser"): Reports the results produced by the process.}
}}


\references{
\enumerate{
\item Campolongo, F., J. Cariboni, and A. Saltelli (2007). An effective screening design for sensitivity analysis of large models.
 Environmental Modelling and Software, 22, 1509–1518.
\item A. Saltelli, K. Chan and E. M. Scott (2000). Sensitivity Analysis. Wiley, New York
}
}

\seealso{\code{help(sobol, sensitivity)} and \code{help(Sobol)}}

\examples{

## Sensitivity analysis of the "Ishigami" model with the "Sobol" method 
}

