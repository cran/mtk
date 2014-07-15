\name{mtkPLMMAnalyserResult-class}
\docType{class}
\alias{mtkPLMMAnalyserResult-class}
\alias{summary,mtkPLMMAnalyserResult-method}
\alias{print,mtkPLMMAnalyserResult-method}
\alias{plot,mtkPLMMAnalyserResult-method}

\title{The \code{mtkPLMMAnalyserResult} class}

\description{
A class to collect the results of the sensitivity analysis produced by the analyser implementing the method \code{PLMM}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyserResult}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkPLMMAnalyserResult]{mtkPLMMAnalyserResult}}}{signature(main,information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the experimental design.}
\item{\code{information}:}{(\code{\link{NULL}}) a named list  containing optional information about the managed data.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkPLMMAnalyserResult"): Provides a summary of the experimental design produced by the analyser.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkPLMMAnalyserResult"): Prints a report of the experimental design produced by the analyser.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkPLMMAnalyserResult"): Plots the experimental design produced by the analyser.}
}}
\author{Rober Faivre, MIA-Toulouse, INRA, Contact: faivre@toulouse.inra.fr, Juhui WANG, MIA-Jouy, Inra,  }

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# see examples with help(PLMM)

}

