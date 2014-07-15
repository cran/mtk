\name{mtkFastAnalyserResult-class}
\docType{class}
\alias{mtkFastAnalyserResult-class}
\alias{summary,mtkFastAnalyserResult-method}
\alias{print,mtkFastAnalyserResult-method}
\alias{plot,mtkFastAnalyserResult-method}

\title{The \code{mtkFastAnalyserResult} class}

\description{
A class to collect the results of the sensitivity analysis produced by the analyser implementing the method \code{Fast}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyserResult}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkFastAnalyserResult]{mtkFastAnalyserResult}}}{signature(main,information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the experimental design.}
\item{\code{information}:}{(\code{\link{NULL}}) a named list  containing optional information about the managed data.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkFastAnalyserResult"): Provides a summary of the results produced by the analyser.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkFastAnalyserResult"): Prints a report of the results produced by the analyser.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkFastAnalyserResult"): Plots the results produced by the analyser.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# See examples from the help of the method: help(Fast)
}

