\name{mtkDesignerResult-class}
\docType{class}
\alias{mtkDesignerResult-class}
\alias{summary,mtkDesignerResult-method}
\alias{print,mtkDesignerResult-method}
\alias{plot,mtkDesignerResult-method}

\title{The \code{mtkDesignerResult} class}

\description{
A class to collect the experimental design produced by an experiments design process.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkResult}}}
\item{Direct Known Subclasses :}{mtkSobolDesignerResult, mtkMorrisDesignerResult, etc.}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkDesignerResult]{mtkDesignerResult}}}{signature(main=data.frame(),information=list())}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame holding the experimental design produced by the process.}
\item{\code{information}:}{(\code{\link{list}}) a named list  containing optional information about the experiments design.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkDesignerResult"): Provides a summary of the experimental design produced by the design process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkDesignerResult"): Prints a report of the experimental design produced by the design process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkDesignerResult"): Plots the experimental design produced by the design process.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Construct an object of the mtkDesignerResult class from a data-frame.
	data <- data.frame()
	expDesign <- mtkDesignerResult(main=data,
  			information = list(sampling="Fast"))
}

