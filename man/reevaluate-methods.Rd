\name{reevaluate-methods}
\alias{reevaluate-methods}
\alias{reevaluate}
\title{The \code{reevaluate} method}
\description{
Re-evaluates the processes of  the workflow to know if they should be re-run. This must be done after changing a process in the workflow. The argument "name"  gives the process from which the workflow should be reevaluated. i.e. if name="design", we tell the workflow that all the processes after the process "design" should be reevaluated. If name="evaluate", we tell the workflow that only the processes after the process "evaluate" should be re-evaluated, etc.
}
\usage{reevaluate(this, name)}
\value{invisble()}
\arguments{
\item{this}{the underlying object of class \code{\linkS4class{mtkExpWorkflow}}.}
\item{name}{a string from "design", "evaluate", or "analyze" to specify the process from which we re-evaluate the workflow.}
}
\section{Details}{
This function is only useful for the kernel programming.
}
\author{Juhui WANG, MIA-Jouy, Inra, Juhui.Wang@jouy.inra.fr }

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# see examples.
}
