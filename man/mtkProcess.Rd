\name{mtkProcess}

\alias{mtkProcess}

\title{The constructor of the  \code{\linkS4class{mtkProcess}} class}

\description{The constructor}

\usage{
mtkProcess(
	name,
	protocol = "R", 
	site = "mtk", 
	service = "", 
	parameters = NULL, 
	ready = FALSE, 
	state = FALSE, 
	result = NULL
	)
}

\value{an object of the \code{\linkS4class{mtkProcess}} class}

\arguments{
\item{name}{the processing step associated with this process. It may be "design", "evaluate", or "analyze".}
\item{protocol}{a string from "http", "system", "R" respectively representing if the process is implemented remotety, locally or as R function.}
\item{site}{the site where the process is implemented if remotely or the package where the process is implemented if as a R function.}
\item{service}{the service name or a system call that implements the process.}
\item{parameters}{a vector of [\code{\linkS4class{mtkParameter}}] representing the parameters necessary to run the process.}
\item{ready}{a logical to indicate if the process is ready to run.}
\item{state}{a logical to indicate if the process finished running and the results are available.}
\item{result}{an object of a class derived from  [\code{\linkS4class{mtkResult}}] to hold the results produced by the process.}
}
\section{Details}{
The \code{\linkS4class{mtkProcess}} class is a virtual class to manage the generic properties of processes involved in the "mtk" package.

For details uses, see examples from \code{help(mtkNativeDesigner)}, \code{help(mtkNativeEvaluator)}, \code{help(mtkNativeAnalyser)}, .
}
\author{Juhui WANG, MIA-Jouy, Inra, Juhui.Wang@jouy.inra.fr }

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# see examples with help(mtkNativeDesigner)

}
