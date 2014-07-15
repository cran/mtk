\name{mtkRegressionAnalyserResult-class}
\docType{class}
\alias{mtkRegressionAnalyserResult-class}
\alias{summary,mtkRegressionAnalyserResult-method}
\alias{print,mtkRegressionAnalyserResult-method}
\alias{plot,mtkRegressionAnalyserResult-method}

\title{The \code{mtkRegressionAnalyserResult} class}

\description{
A class to collect the results of the sensitivity analysis produced by the analyser implementing the method \code{Regression}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyserResult}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkRegressionAnalyserResult]{mtkRegressionAnalyserResult}}}{signature(main,information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the experimental design.}
\item{\code{information}:}{(\code{\link{NULL}}) a named list  containing optional information about the managed data.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkRegressionAnalyserResult"): Provides a summary of the experimental design produced by the analyser.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkRegressionAnalyserResult"): Prints a report of the experimental design produced by the analyser.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkRegressionAnalyserResult"): Plots the experimental design produced by the analyser.}
}}


\seealso{\code{help(morris, sensitivity)} and \code{help(Regression)}}

\examples{

## See examples from help(mtkAnalyserResult)

	
}

