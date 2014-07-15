\name{mtkRandLHSDesignerResult-class}
\docType{class}
\alias{mtkRandLHSDesignerResult-class}
\alias{summary,mtkRandLHSDesignerResult-method}
\alias{print,mtkRandLHSDesignerResult-method}
\alias{plot,mtkRandLHSDesignerResult-method}

\title{The \code{mtkRandLHSDesignerResult} class}

\description{
A class to collect the experimental design produced by the designer implementing the method \code{RandLHS}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkDesignerResult}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkRandLHSDesignerResult]{mtkRandLHSDesignerResult}}}{signature(main,information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the experimental design.}
\item{\code{information}:}{(\code{\link{NULL}}) a named list  containing optional information about the managed data.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkRandLHSDesignerResult"): Provides a summary of the experimental design produced by the designer.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkRandLHSDesignerResult"): Prints a report of the experimental design produced by the designer.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkRandLHSDesignerResult"): Plots the experimental design produced by the designer.}
}}
\seealso{\code{package?lsh}, \code{help(LHS)}}

\examples{

# To do, example for LHS method
}

