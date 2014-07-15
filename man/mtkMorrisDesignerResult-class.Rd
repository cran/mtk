\name{mtkMorrisDesignerResult-class}
\docType{class}
\alias{mtkMorrisDesignerResult-class}
\alias{summary,mtkMorrisDesignerResult-method}
\alias{print,mtkMorrisDesignerResult-method}
\alias{plot,mtkMorrisDesignerResult-method}

\title{The \code{mtkMorrisDesignerResult} class}

\description{
A class to collect the experimental design produced by the designer implementing the method \code{Morris}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkDesignerResult}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkMorrisDesignerResult]{mtkMorrisDesignerResult}}}{signature(main,information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the experimental design produced by the designer.}
\item{\code{information}:}{(\code{\link{NULL}}) a named list  containing optional information about the managed data.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkMorrisDesignerResult"): Provides a summary of the experimental design produced by the designer.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkMorrisDesignerResult"): Prints a report of the experimental design produced by the designer.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkMorrisDesignerResult"): Plots the experimental design produced by the designer.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{

# See examples from the help of the method: help(Morris)
}

