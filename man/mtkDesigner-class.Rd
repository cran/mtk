\name{mtkDesigner-class}
\docType{class}
\alias{mtkDesigner-class}
\alias{is.ready,mtkDesigner-method}
\alias{setReady,mtkDesigner,logical-method}
\alias{is.finished,mtkDesigner-method}
\alias{setState,mtkDesigner,logical-method}
\alias{setName,mtkDesigner,character-method}
\alias{setParameters,mtkDesigner,vector-method}
\alias{getParameters,mtkDesigner-method}
\alias{getResult,mtkDesigner-method}
\alias{getData,mtkDesigner-method}
\alias{serializeOn,mtkDesigner-method}
\alias{run,mtkDesigner,mtkExpWorkflow-method}
\alias{summary,mtkDesigner-method}
\alias{print,mtkDesigner-method}
\alias{plot,mtkDesigner-method}
\alias{report,mtkDesigner-method}

\title{The \code{mtkDesigner} class}

\description{
The \code{mtkDesigner} class is a sub-class of the  class \code{\linkS4class{mtkProcess}}  used to manage 
the experiments design  task. It provides all the slots and methods defined in the class \code{\linkS4class{mtkProcess}}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkProcess}}}
\item{Direct Known Subclasses :}{\code{\link[=mtkNativeDesigner-class]{mtkNativeDesigner}},\code{\link[=mtkMorrisDesigner-class]{mtkMorrisDesigner}}, etc.}
}}

\section{Constructor}{
\describe{
\item{mtkDesigner}{signature(protocol = "R", site = "mtk", service = "",
 	parameters = NULL, parametersList = NULL, ready = TRUE,
 	 state = FALSE, result = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "design".}
\item{\code{protocol}:}{(\code{\link{character}}) a string to name the protocol used to run the process: http, system, R, etc.}
\item{site}{the site where the process is implemented if remotely or the package where the process is implemented if as a R function.}
\item{service}{a string corresponding to the name of the method  implemented in the package "mtk" or the service that implements the process if remotely.}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder from the class \code{\linkS4class{mtkDesignerResult}} to hold the results produced by the process.}
}}

\section{Methods}{
\describe{

\item{setName}{signature(this = "mtkDesigner", name = "character"): Not used, method inherited from the parent class.}
\item{setParameters}{signature(this = "mtkDesigner", f = "vector"): Assigns new parameters to  the process.}
\item{getParameters}{signature(this = "mtkDesigner"): Returns the parameters as a named list.}
\item{is.ready}{signature( = "mtkDesigner"): Tests if the process is ready to run.}
\item{setReady}{signature(this = "mtkDesigner", switch = "logical"): Makes the process ready to run.}
\item{is.ready}{signature( = "mtkDesigner"): Tests if the results produced by the process are available.}
\item{setReady}{signature(this = "mtkDesigner", switch = "logical"): Marks the process as already executed.}
\item{getResult}{signature(this = "mtkDesigner"): Returns the results produced by the process as mtkDesignerResult.}
\item{getData}{signature(this = "mtkDesigner"): Returns the results  as a data.frame.}
\item{serializeOn}{signature(this = "mtkDesigner"): Returns all data managed by the process as a named list.}
\item{run}{signature(this = "mtkDesigner", context= "mtkExpWorkflow"): Generates the experimental design by sampling the factors.}
\item{summary}{signature(object = "mtkDesigner"): Provides a summary of the results produced by the process.}
\item{print}{signature(x = "mtkDesigner"): Prints a report of the results produced by the process.}
\item{plot}{signature(x = "mtkDesigner"): Reports graphically the results produced by the process.}
\item{report}{signature(this = "mtkDesigner"): Reports the results produced by the process.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create a designer with the method "Morris" 
# implemented in the package "mtk"
	designer <- mtkDesigner(service="Morris",
		 parametersList=list(nboot=20))
}

