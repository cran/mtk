\name{mtkSobolAnalyserResult-class}
\docType{class}
\alias{mtkSobolAnalyserResult-class}
\alias{summary,mtkSobolAnalyserResult-method}
\alias{print,mtkSobolAnalyserResult-method}
\alias{plot,mtkSobolAnalyserResult-method}

\title{The \code{mtkSobolAnalyserResult} class}

\description{
A class to collect the results of the sensitivity analysis produced by the analyser implementing the method \code{Sobol}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyserResult}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkSobolAnalyserResult]{mtkSobolAnalyserResult}}}{signature(main,information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the experimental design.}
\item{\code{information}:}{(\code{\link{NULL}}) a named list  containing optional information about the managed data.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkSobolAnalyserResult"): Provides a summary of the experimental design produced by the analyser.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkSobolAnalyserResult"): Prints a report of the experimental design produced by the analyser.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkSobolAnalyserResult"): Plots the experimental design produced by the analyser.}
}}


\seealso{\code{help(mtkAnalyserResult)} and \code{help(Sobol)}}

\examples{

## See examples from help(mtkAnalyserResult).
	
}

