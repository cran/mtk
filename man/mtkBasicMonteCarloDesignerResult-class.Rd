\name{mtkBasicMonteCarloDesignerResult-class}
\docType{class}

\alias{mtkBasicMonteCarloDesignerResult-class}
\alias{summary,mtkBasicMonteCarloDesignerResult-method}
\alias{print,mtkBasicMonteCarloDesignerResult-method}
\alias{plot,mtkBasicMonteCarloDesignerResult-method}

\title{The \code{mtkBasicMonteCarloDesignerResult} class}

\description{
A class to collect the experimental design produced by the designer implementing the method \code{BasicMonteCarlo}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkDesignerResult}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link{mtkBasicMonteCarloDesignerResult}}}{signature(main,information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data-frame holding the experimental design.}
\item{\code{information}:}{(\code{\link{list}}) a named list  containing optional information about the managed data or the underlying process.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkBasicMonteCarloDesignerResult"): Provides a summary of the experimental design produced by the designer.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkBasicMonteCarloDesignerResult"): Prints a report of the experimental design produced by the designer.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkBasicMonteCarloDesignerResult"): Plots the experimental design produced by the designer.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{
\enumerate{
\item A. Saltelli, K. Chan and E. M. Scott (2000). Sensitivity Analysis. Wiley, New York.
\item J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.
}
}

\examples{

# see examples with help(BasicMonteCarlo)

}

