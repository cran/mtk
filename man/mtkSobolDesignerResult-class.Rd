\name{mtkSobolDesignerResult-class}
\docType{class}
\alias{mtkSobolDesignerResult-class}
\alias{summary,mtkSobolDesignerResult-method}
\alias{print,mtkSobolDesignerResult-method}
\alias{plot,mtkSobolDesignerResult-method}

\title{The \code{mtkSobolDesignerResult} class}

\description{
A class to collect the experimental design produced by the Designer implementing the method \code{Sobol}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkDesignerResult}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkSobolDesignerResult]{mtkSobolDesignerResult}}}{signature(main,information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the experimental design.}
\item{\code{information}:}{(\code{\link{NULL}}) a named list  containing optional information about the managed data.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkSobolDesignerResult"): Provides a summary of the experimental design produced by the designer.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkSobolDesignerResult"): Prints a report of the experimental design produced by the designer.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkSobolDesignerResult"): Plots the experimental design produced by the designer.}
}}

\seealso{\code{help(mtkDesignerResult)} and \code{help(Sobol)}}

\examples{

## See examples from help(mtkDesignerResult).
	
}

