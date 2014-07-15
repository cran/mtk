\name{mtkMorrisAnalyser-class}
\docType{class}
\alias{mtkMorrisAnalyser-class}
\alias{is.ready,mtkMorrisAnalyser-method}
\alias{setReady,mtkMorrisAnalyser,logical-method}
\alias{is.finished,mtkMorrisAnalyser-method}
\alias{setState,mtkMorrisAnalyser,logical-method}
\alias{setName,mtkMorrisAnalyser,character-method}
\alias{setParameters,mtkMorrisAnalyser,vector-method}
\alias{getParameters,mtkMorrisAnalyser-method}
\alias{getResult,mtkMorrisAnalyser-method}
\alias{getData,mtkMorrisAnalyser-method}
\alias{serializeOn,mtkMorrisAnalyser-method}
\alias{run,mtkMorrisAnalyser,mtkExpWorkflow-method}
\alias{summary,mtkMorrisAnalyser-method}
\alias{print,mtkMorrisAnalyser-method}
\alias{plot,mtkMorrisAnalyser-method}
\alias{report,mtkMorrisAnalyser-method}

\title{The \code{mtkMorrisAnalyser} class}

\description{
The \code{mtkMorrisAnalyser} class is a sub-class of the  class \code{\linkS4class{mtkAnalyser}}. It implements the sensitivity analysis method \code{Morris} and provides all the slots and methods defined in the class \code{\linkS4class{mtkAnalyser}}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyser}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkMorrisAnalyser]{mtkMorrisAnalyser}}}{signature(mtkParameters = NULL, listParameters = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "analyze".}
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
\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkMorrisAnalyser", name = "character"): Not used, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkMorrisAnalyser", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkMorrisAnalyser"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkMorrisAnalyser"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkMorrisAnalyser", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkMorrisAnalyser"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkMorrisAnalyser", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkMorrisAnalyser"): Returns the results produced by the process as a [\code{\linkS4class{mtkMorrisAnalyserResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkMorrisAnalyser"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkMorrisAnalyser"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkMorrisAnalyser", context= "mtkExpWorkflow"): Runs the process to generate the results.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkMorrisAnalyser"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkMorrisAnalyser"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkMorrisAnalyser"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkMorrisAnalyser"): Reports the results produced by the process.}
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


