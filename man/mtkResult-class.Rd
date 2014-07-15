\name{mtkResult-class}
\docType{class}
\alias{mtkResult-class}
\alias{summary,mtkResult-method}
\alias{serializeOn,mtkResult-method}
\title{The \code{mtkResult} class}

\description{
A general and simple class to collect the results produced by diverse processes involved in the "mtk" package.
}


\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{}
\item{Direct Known Subclasses :}{\code{\link[=mtkDesignerResult-class]{mtkDesignerResult}},\code{\link[=mtkEvaluatorResult-class]{mtkEvaluatorResult}}, etc.}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkResult]{mtkResult}}}{signature(information=list())}
}}

\section{Slots}{
\describe{
\item{\code{information}:}{(\code{\link{list}}) a named list  containing information about the managed data.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkResult"): Provides a summary report about the managed data.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkResult"): Returns all managed data  as a named list.}
}}

\section{Details}{
The \code{\linkS4class{mtkResult}} class is a virtual class to manage the generic properties of results produced by the processes involved in the "mtk" package.

For details uses, see examples from \code{help(mtkAnalyserResult)}, \code{help(mtkDesignerResult)}, \code{help(mtkEvaluatorResult)}.
}

\seealso{\code{help(mtkAnalyserResult)}, \code{help(mtkDesignerResult)}, \code{help(mtkEvaluatorResult)}}

\author{Juhui WANG, MIA-Jouy, Inra, Juhui.Wang@jouy.inra.fr }

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{

## See examples from help(mtkAnalyserResult), help(mtkDesignerResult), help(mtkEvaluatorResult)

	
}

