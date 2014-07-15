\name{mtkAnalyserResult}
\alias{mtkAnalyserResult}
\title{The constructor of the class \code{mtkAnalyserResult}}

\description{The constructor}
\usage{mtkAnalyserResult(main = data.frame(), information = list())
}
\value{an object of the \code{\linkS4class{mtkAnalyserResult}} class}

\arguments{
\item{main}{a data.frame to hold the results produced with the analyser.}
\item{information}{a named list  containing optional information about the managed data and process.}
}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Construct an object of the \code{mtkAnalyserResult} class
# from a data.frame.
	data <- data.frame()
	result <- mtkAnalyserResult(main=data, 
		information = list(method="Morris", model="Ishigami"))
}
