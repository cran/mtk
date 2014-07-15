\name{mtkAnalyserResult-class}
\docType{class}
\alias{mtkAnalyserResult-class}
\alias{summary,mtkAnalyserResult-method}
\alias{print,mtkAnalyserResult-method}
\alias{plot,mtkAnalyserResult-method}


\title{The \code{mtkAnalyserResult} class}

\description{
A class to manage the results produced by the sensitivity analysis process.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkResult}}}
\item{Direct Known Subclasses :}{\code{\linkS4class{mtkMorrisAnalyserResult}}, \code{\linkS4class{mtkPLMMAnalyserResult}}, etc.}
}}

\section{Constructor}{
\describe{
\item{\code{{mtkAnalyserResult}}}{signature(main = data.frame(), information = list())}
}}

\section{Slots}{
\describe{
\item{\code{main}:}{(\code{\link{data.frame}}) a data.frame to hold the analysis results produced with the analyser.}
\item{\code{information}:}{(\code{\link{list}}) a named list  containing optional information about the managed data and process.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkAnalyserResult"): Provides a summary of the analysis results produced with the analyser.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkAnalyserResult"): Prints a report of the analysis results produced with the analyser.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkAnalyserResult"): Plots the analysis results produced with the analyser.}
}}


\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Construct an object of the \code{mtkAnalyserResult} class
# from a data.frame.
	data <- data.frame()
	result <- mtkAnalyserResult(main=data, information 
		= list(method="Morris", model="Ishigami"))
}

