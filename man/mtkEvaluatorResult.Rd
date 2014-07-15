\name{mtkEvaluatorResult}
\alias{mtkEvaluatorResult}
\title{The constructor of the class \code{mtkEvaluatorResult}}

\description{The constructor}

\usage{mtkEvaluatorResult(main=data.frame(), information=list())
}
\value{an object of the \code{\linkS4class{mtkEvaluatorResult}} class}

\arguments{
\item{main}{a data.frame holding the data produced by the model simulation..}
\item{information}{a named list  containing the information about the managed data or process.}
}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Construct an object of the \code{mtkEvaluatorResult}
# class from a data-frame.
		data <- data.frame()
		simulation <- mtkEvaluatorResult(main=data, 
				information = list(model="Ishigami"))
}
