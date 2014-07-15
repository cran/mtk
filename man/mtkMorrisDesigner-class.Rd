\name{mtkMorrisDesigner-class}
\docType{class}
\alias{mtkMorrisDesigner-class}
\alias{is.ready,mtkMorrisDesigner-method}
\alias{setReady,mtkMorrisDesigner,logical-method}
\alias{is.finished,mtkMorrisDesigner-method}
\alias{setState,mtkMorrisDesigner,logical-method}
\alias{setName,mtkMorrisDesigner,character-method}
\alias{setParameters,mtkMorrisDesigner,vector-method}
\alias{getParameters,mtkMorrisDesigner-method}
\alias{getResult,mtkMorrisDesigner-method}
\alias{getData,mtkMorrisDesigner-method}
\alias{serializeOn,mtkMorrisDesigner-method}
\alias{run,mtkMorrisDesigner,mtkExpWorkflow-method}
\alias{summary,mtkMorrisDesigner-method}
\alias{print,mtkMorrisDesigner-method}
\alias{plot,mtkMorrisDesigner-method}
\alias{report,mtkMorrisDesigner-method}

\title{The \code{mtkMorrisDesigner} class}

\description{
The \code{mtkMorrisDesigner} class is a sub-class of the 
 class \code{\linkS4class{mtkDesigner}}. It implements the method \code{Morris} and provides all the slots and methods defined in the class \code{mtkDesigner}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkDesigner}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkMorrisDesigner]{mtkMorrisDesigner}}}{signature(mtkParameters = NULL, listParameters = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "design".}
\item{\code{protocol}:}{(\code{\link{character}}) always takes the string "R".}
\item{\code{site}:}{(\code{\link{character}}) always takes the string "mtk".}
\item{\code{service}:}{(\code{\link{character}}) always takes the string "Morris".}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkMorrisDesigner", name = "character"): Not used, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkMorrisDesigner", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkMorrisDesigner"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkMorrisDesigner"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkMorrisDesigner", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkMorrisDesigner"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkMorrisDesigner", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkMorrisDesigner"): Returns the results produced by the process as a [\code{\linkS4class{mtkMorrisDesignerResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkMorrisDesigner"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkMorrisDesigner"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkMorrisDesigner", context= "mtkExpWorkflow"): Generates the experimental design by sampling the factors.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkMorrisDesigner"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkMorrisDesigner"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkMorrisDesigner"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkMorrisDesigner"): Reports the results produced by the process.}
}}

\references{
\enumerate{
\item Campolongo, F., J. Cariboni, and A. Saltelli (2007). An effective screening design for sensitivity analysis of large models.
 Environmental Modelling and Software, 22, 1509–1518.
\item A. Saltelli, K. Chan and E. M. Scott (2000). Sensitivity Analysis. Wiley, New York
}
}

\seealso{\code{help(morris, sensitivity)} and \code{help(Morris)}}

\examples{

## Sensitivity analysis of the "Ishigami" model with the "Morris" method 


#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkMorrisDesigner( listParameters
	    	= list(r=20, type="oat", levels=4, grid.jump=2)) 

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process 
		exp1.analyser <- mtkMorrisAnalyser()

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp1.designer,
		evaluate=exp1.evaluator, analyze=exp1.analyser))

# 	Run the workflow and report the results.
		run(exp1)
		print(exp1)
		
}

