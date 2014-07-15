\name{mtkBasicMonteCarloDesigner-class}
\docType{class}

\alias{mtkBasicMonteCarloDesigner-class}
\alias{is.ready,mtkBasicMonteCarloDesigner-method}
\alias{setReady,mtkBasicMonteCarloDesigner,logical-method}
\alias{is.finished,mtkBasicMonteCarloDesigner-method}
\alias{setState,mtkBasicMonteCarloDesigner,logical-method}
\alias{setName,mtkBasicMonteCarloDesigner,character-method}
\alias{setParameters,mtkBasicMonteCarloDesigner,vector-method}
\alias{getParameters,mtkBasicMonteCarloDesigner-method}
\alias{getResult,mtkBasicMonteCarloDesigner-method}
\alias{getData,mtkBasicMonteCarloDesigner-method}
\alias{serializeOn,mtkBasicMonteCarloDesigner-method}
\alias{run,mtkBasicMonteCarloDesigner,mtkExpWorkflow-method}
\alias{summary,mtkBasicMonteCarloDesigner-method}
\alias{print,mtkBasicMonteCarloDesigner-method}
\alias{plot,mtkBasicMonteCarloDesigner-method}
\alias{report,mtkBasicMonteCarloDesigner-method}

\title{The \code{mtkBasicMonteCarloDesigner} class}

\description{
The \code{mtkBasicMonteCarloDesigner} class is a sub-class of the  class \code{\linkS4class{mtkDesigner}}. 
It implements the  \code{BasicMonteCarlo} method for experiments design and provides all the slots and methods defined in the class \code{\linkS4class{mtkDesigner}}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkDesigner}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{mtkBasicMonteCarloDesigner}{signature(mtkParameters = NULL, listParameters = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "design".}
\item{\code{protocol}:}{(\code{\link{character}}) always takes the string "R".}
\item{\code{site}:}{(\code{\link{character}}) always takes the string "mtk".}
\item{\code{service}:}{(\code{\link{character}}) always takes the string "BasicMonteCarlo".}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{setName}{signature(this = "mtkBasicMonteCarloDesigner", name = "character"): Method inherited from the parent class.}
\item{setParameters}{signature(this = "mtkBasicMonteCarloDesigner", f = "vector"): Assigns new parameters to  the process.}
\item{getParameters}{signature(this = "mtkBasicMonteCarloDesigner"): Returns the parameters as a named list.}
\item{is.ready}{signature( = "mtkBasicMonteCarloDesigner"): Tests if the process is ready to run.}
\item{setReady}{signature(this = "mtkBasicMonteCarloDesigner", switch = "logical"): Makes the process ready to run.}
\item{is.ready}{signature( = "mtkBasicMonteCarloDesigner"): Tests if the results produced by the process are available.}
\item{setReady}{signature(this = "mtkBasicMonteCarloDesigner", switch = "logical"): Marks the process as already executed.}
\item{getResult}{signature(this = "mtkBasicMonteCarloDesigner"): Returns the results produced by the process as a [\code{\linkS4class{mtkBasicMonteCarloDesignerResult}}].}
\item{getData}{signature(this = "mtkBasicMonteCarloDesigner"): Returns the results produced by the process as a data.frame.}
\item{serializeOn}{signature(this = "mtkBasicMonteCarloDesigner"): Returns all data managed by the process as a named list.}
\item{run}{signature(this = "mtkBasicMonteCarloDesigner", context= "mtkExpWorkflow"): Generates the experimental design by sampling the factors.}
\item{summary}{signature(object = "mtkBasicMonteCarloDesigner"): Provides a summary of the results produced by the process.}
\item{print}{signature(x = "mtkBasicMonteCarloDesigner"): Prints a report of the results produced by the process.}
\item{plot}{signature(x = "mtkBasicMonteCarloDesigner"): Plots the results produced by the process.}
\item{report}{signature(this = "mtkBasicMonteCarloDesigner"): Reports the results produced by the process.}
}}
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
# See examples from  the BasicMontecarlo method:  help(basicMonteCarlo)

}

