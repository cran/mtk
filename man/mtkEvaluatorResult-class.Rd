\name{mtkEvaluatorResult-class}
\docType{class}
\alias{mtkEvaluatorResult-class}
\alias{summary,mtkEvaluatorResult-method}
\alias{print,mtkEvaluatorResult-method}
\alias{plot,mtkEvaluatorResult-method}

\title{The \code{mtkEvaluatorResult} class}

\description{
A class to collect the results of the simulation produced with a model.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkResult}}}
\item{Direct Known Subclasses :}{\code{\link[=mtkWWDMEvaluatorResult-class]{mtkWWDMEvaluatorResult}}, etc.}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkEvaluatorResult]{mtkEvaluatorResult}}}{signature(main=data.frame(),information=list())}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the data produced by the model simulation.}
\item{\code{information}:}{(\code{\link{list}}) a named list  containing information about the managed data and process.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkEvaluatorResult"): Provides a summary of the data produced with the model simulation.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkEvaluatorResult"): Prints a report of the data produced with the model simulation.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkEvaluatorResult"): Plots the data produced with the model simulation.}
}}

\seealso{\code{help(morris, sensitivity)} and \code{help(Regression)}}

\examples{

## See examples from help(mtkAnalyserResult)

	
}
