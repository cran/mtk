\name{mtkMorrisAnalyserResult-class}
\docType{class}
\alias{mtkMorrisAnalyserResult-class}
\alias{summary,mtkMorrisAnalyserResult-method}
\alias{print,mtkMorrisAnalyserResult-method}
\alias{plot,mtkMorrisAnalyserResult-method}

\title{The \code{mtkMorrisAnalyserResult} class}

\description{
A class to collect the results of the sensitivity analysis produced by the analyser implementing the method \code{Morris}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyserResult}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkMorrisAnalyserResult]{mtkMorrisAnalyserResult}}}{signature(main,information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the results produced by the "Morris" analyser.}
\item{\code{information}:}{(\code{\link{NULL}}) a named list  containing optional information about the managed data.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkMorrisAnalyserResult"): Provides a summary of the results produced by the analyser.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkMorrisAnalyserResult"): Prints a report of the results produced by the analyser.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkMorrisAnalyserResult"): Plots the results produced by the analyser.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{

# See examples from the help of the method: help(Morris)
}

