\name{mtkBasicMonteCarloDesigner}
\alias{mtkBasicMonteCarloDesigner}
\title{The constructor of the class \code{mtkBasicMonteCarloDesigner}}


\description{The constructor}
\usage{mtkBasicMonteCarloDesigner(mtkParameters = NULL,
			 listParameters = NULL)
}
\value{an object of the \code{\linkS4class{mtkBasicMonteCarloDesigner}} class}

\arguments{
\item{mtkParameters}{a vector of \code{\linkS4class{mtkParameter}} representing the parameters necessary to run the process.}
\item{listParameters}{a named list  containing the parameters to pass while calling the process. This gives another way to specify the parameters.}
}
\section{Details}{
See the \code{BasicMonteCarlo} method with \code{help(BasicMonteCarlo)}
}

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
