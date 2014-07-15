\name{mtkNativeDesigner-class}
\docType{class}
\alias{mtkNativeDesigner-class}
\alias{is.ready,mtkNativeDesigner-method}
\alias{setReady,mtkNativeDesigner,logical-method}
\alias{is.finished,mtkNativeDesigner-method}
\alias{setState,mtkNativeDesigner,logical-method}
\alias{setName,mtkNativeDesigner,character-method}
\alias{setParameters,mtkNativeDesigner,vector-method}
\alias{getParameters,mtkNativeDesigner-method}
\alias{getResult,mtkNativeDesigner-method}
\alias{getData,mtkNativeDesigner-method}
\alias{serializeOn,mtkNativeDesigner-method}
\alias{run,mtkNativeDesigner,mtkExpWorkflow-method}
\alias{summary,mtkNativeDesigner-method}
\alias{print,mtkNativeDesigner-method}
\alias{plot,mtkNativeDesigner-method}
\alias{report,mtkNativeDesigner-method}

\title{The \code{mtkNativeDesigner} class}

\description{
The \code{mtkNativeDesigner} class is a sub-class of the  class \code{\linkS4class{mtkDesigner}}  used to manage 
the sampling task implemented locally (i.e. tasks don't need to call services from the Web). By object inheriting, it provides all the slots and methods defined in the class \code{\linkS4class{mtkDesigner}}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkDesigner}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkNativeDesigner]{mtkNativeDesigner}}}{signature(design=NULL, X=NULL, information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{design}:}{(\code{\link{ANY}})  a string, an R function, or NULL to inform the designer to use.}
\item{\code{name}:}{(\code{\link{character}})  always takes the string "design".}
\item{\code{protocol}:}{(\code{\link{character}}) a string to name the protocol used to run the process: http, system, R, etc. Here, it always takes "R".}
\item{\code{site}:}{(\code{\link{character}}) a string to indicate where the service is located. Here, it gives no sense.}
\item{\code{service}:}{(\code{\link{character}}) a string to name the service to invoke.}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}

}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkNativeDesigner", name = "character"): Method inherited from the parent class. It gives no sense here.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkNativeDesigner", f = "vector"): Assigns new parameters vector to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkNativeDesigner"): Returns the parameters vector as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkNativeDesigner"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkNativeDesigner", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkNativeDesigner"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkNativeDesigner", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkNativeDesigner"): Returns the results produced by the process as a [\code{\linkS4class{mtkDesignerResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkNativeDesigner"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkNativeDesigner"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkNativeDesigner", context= "mtkExpWorkflow"): Generates the experimental design by sampling the factors.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkNativeDesigner"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkNativeDesigner"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkNativeDesigner"):  Produces a graphical report of the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkNativeDesigner"): Reports the results produced by the process.}
}}


\section{Details}{
We can construct an object of the \code{\linkS4class{mtkNativeDesigner}} class from the following situations: 
\enumerate{
	\item The designer is provided within the package "mtk"; 
	\item The designer is provided as an R function implemented outside the package "mtk";  If so, the R function must produce a result as a named list with two elements: X and information, 
 	where \code{X} is a date.frame containing the analysis result and \code{information} is a named list containing supplementary information about the analysis process.
	\item The experiments design is produced off-line and available as a data.frame. We just want to use the "mtk" package for reporting.
	}
For detail uses, see examples from \code{help(mtkNativeEvaluator)}.
}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create a native designer with the method "Morris"
# implemented in the package "mtk"

designer <- mtkNativeDesigner(
	design ="Morris", 
	information=list(size=20)
	)
}

