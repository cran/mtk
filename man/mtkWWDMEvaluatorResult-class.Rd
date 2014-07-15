\name{mtkWWDMEvaluatorResult-class}
\docType{class}
\alias{mtkWWDMEvaluatorResult-class}
\alias{summary,mtkWWDMEvaluatorResult-method}
\alias{print,mtkWWDMEvaluatorResult-method}
\alias{plot,mtkWWDMEvaluatorResult-method}

\title{The \code{mtkWWDMEvaluatorResult} class}

\description{
A class to collect the results produced by the evaluator implementing the model \code{WWDM}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkEvaluatorResult}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkWWDMEvaluatorResult]{mtkWWDMEvaluatorResult}}}{signature(main,information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the results produced by the model simulation.}
\item{\code{information}:}{(\code{\link{NULL}}) a named list  containing optional information about the managed data.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkWWDMEvaluatorResult"): Provides a summary of the results produced by the evaluator.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkWWDMEvaluatorResult"): Prints a report of the results produced by the evaluator.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkWWDMEvaluatorResult"): Plots the results produced by the evaluator.}
}}

\seealso{\code{help(mtkEvaluatorResult)} and \code{help(WWDM)}}

\examples{

## See examples from help(mtkEvaluatorResult).
	
}

