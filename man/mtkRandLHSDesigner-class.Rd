\name{mtkRandLHSDesigner-class}
\docType{class}
\alias{mtkRandLHSDesigner-class}
\alias{is.ready,mtkRandLHSDesigner-method}
\alias{setReady,mtkRandLHSDesigner,logical-method}
\alias{is.finished,mtkRandLHSDesigner-method}
\alias{setState,mtkRandLHSDesigner,logical-method}
\alias{setName,mtkRandLHSDesigner,character-method}
\alias{setParameters,mtkRandLHSDesigner,vector-method}
\alias{getParameters,mtkRandLHSDesigner-method}
\alias{getResult,mtkRandLHSDesigner-method}
\alias{getData,mtkRandLHSDesigner-method}
\alias{serializeOn,mtkRandLHSDesigner-method}
\alias{run,mtkRandLHSDesigner,mtkExpWorkflow-method}
\alias{summary,mtkRandLHSDesigner-method}
\alias{print,mtkRandLHSDesigner-method}
\alias{plot,mtkRandLHSDesigner-method}
\alias{report,mtkRandLHSDesigner-method}

\title{The \code{mtkRandLHSDesigner} class}

\description{
The \code{mtkRandLHSDesigner} class is a sub-class of the  class \code{mtkDesigner}. It implements the method \code{RandLHS} and provides all the slots and methods defined in the class \code{mtkDesigner}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkDesigner}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkRandLHSDesigner]{mtkRandLHSDesigner}}}{signature(mtkParameters = NULL, listParameters = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "design".}
\item{\code{protocol}:}{(\code{\link{character}}) always takes the string "R".}
\item{\code{site}:}{(\code{\link{character}}) always takes the string "mtk".}
\item{\code{service}:}{(\code{\link{character}}) always takes the string "RandLHS".}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkRandLHSDesigner", name = "character"): Not used, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkRandLHSDesigner", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkRandLHSDesigner"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkRandLHSDesigner"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkRandLHSDesigner", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkRandLHSDesigner"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkRandLHSDesigner", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkRandLHSDesigner"): Returns the results produced by the process as a [\code{\linkS4class{mtkRandLHSDesignerResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkRandLHSDesigner"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkRandLHSDesigner"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkRandLHSDesigner", context= "mtkExpWorkflow"): Generates the experimental design by sampling the factors.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkRandLHSDesigner"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkRandLHSDesigner"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkRandLHSDesigner"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkRandLHSDesigner"): Reports the results produced by the process.}
}}

\seealso{\code{package?lsh}, \code{help(LHS)}}

\examples{

# To do, example for LHS method
}

