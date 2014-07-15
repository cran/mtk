\name{mtkNativeAnalyser}
\alias{mtkNativeAnalyser}
\title{The constructor of the class \code{mtkNativeAnalyser}}

\description{
The constructor.
}

\usage{mtkNativeAnalyser(analyze=NULL, X=NULL, information=NULL)
}
\value{an object of the \code{\linkS4class{mtkNativeAnalyser}} class}

\arguments{
\item{analyze}{NULL, an R function or a string to specify the analyser to use.}
\item{X}{NULL or a data.frame to load the results produced off-line.}
\item{information}{a named list to provide with supplementary information about the analysis produced off-line or the parameters used by the analyser.}
}

\section{Details}{
We can construct an object of the \code{\linkS4class{mtkNativeAnalyser}} class in three manners:
\itemize{
\item{the analyser is provided within the package "mtk"}{The argument "analyze" takes a string giving the name of the method used to carry out the sensitivity analysis, 
the argument "information" gives the list of parameters used by the analyser.}
\item{the analyser is available as an R function implemented outside the package "mtk"}{The argument "analyze" takes an R function implementing the analyser, the argument "information" may be used to give supplementary information about the R function.}
\item{the results of the sensitivity analysis are already available as a data.frame. We use "mtk" only for reporting.}{The argument "X" takes the data.frame holding the available results, 
and the argument "information" may be omitted or simply used to give supplementary information about the analysis.}
}

More examples for using this class, see \code{?class(mtkNativeEvaluator)}.
}
\seealso{\code{?class(mtkNativeEvaluator)}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create a native analyser with the method "Morris" implemented in the package "mtk"

	analyser <- mtkNativeAnalyser(
		analyze="Morris",
		information=list(nboot=20))
}
