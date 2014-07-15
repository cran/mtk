\name{mtkSystemEvaluatorResult-class}
\docType{class}
\alias{mtkSystemEvaluatorResult-class}
\alias{summary,mtkSystemEvaluatorResult-method}
\alias{print,mtkSystemEvaluatorResult-method}
\alias{plot,mtkSystemEvaluatorResult-method}

\title{The \code{mtkSystemEvaluatorResult} class}

\description{
A class to collect the results produced by the evaluator implemented as a system application.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkEvaluatorResult}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkSystemEvaluatorResult]{mtkSystemEvaluatorResult}}}{signature(main,information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the results produced by the model simulation.}
\item{\code{information}:}{(\code{\link{NULL}}) a named list  containing optional information about the managed data.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkSystemEvaluatorResult"): Provides a summary of the results produced by the evaluator.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkSystemEvaluatorResult"): Prints a report of the results produced by the evaluator.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkSystemEvaluatorResult"): Plots the results produced by the evaluator.}
}}
\author{Juhui WANG, MIA-Jouy, Inra, Juhui.Wang@jouy.inra.fr }

\examples{
# See examples 
}

