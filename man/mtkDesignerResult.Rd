\name{mtkDesignerResult}
\alias{mtkDesignerResult}
\title{The constructor of the class \code{mtkDesignerResult}}

\description{The constructor}

\usage{mtkDesignerResult(main=data.frame(),information=list())
}
\value{an object of the \code{\linkS4class{mtkDesignerResult}} class}

\arguments{
\item{main}{a data.frame holding the experimental design produced by the designer.}
\item{information}{a named list  containing the information about the experiments design.}
}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Construct an object of the \code{mtkDesignerResult} 
# class from a data-frame.
	data <- data.frame()
	expDesign <- mtkDesignerResult(main=data,
 		 information = list(sampling="Fast"))
}
