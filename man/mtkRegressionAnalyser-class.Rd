\name{mtkRegressionAnalyser-class}
\docType{class}
\alias{mtkRegressionAnalyser-class}
\alias{is.ready,mtkRegressionAnalyser-method}
\alias{setReady,mtkRegressionAnalyser,logical-method}
\alias{is.finished,mtkRegressionAnalyser-method}
\alias{setState,mtkRegressionAnalyser,logical-method}
\alias{setName,mtkRegressionAnalyser,character-method}
\alias{setParameters,mtkRegressionAnalyser,vector-method}
\alias{getParameters,mtkRegressionAnalyser-method}
\alias{getResult,mtkRegressionAnalyser-method}
\alias{getData,mtkRegressionAnalyser-method}
\alias{serializeOn,mtkRegressionAnalyser-method}
\alias{run,mtkRegressionAnalyser,mtkExpWorkflow-method}
\alias{summary,mtkRegressionAnalyser-method}
\alias{print,mtkRegressionAnalyser-method}
\alias{plot,mtkRegressionAnalyser-method}
\alias{report,mtkRegressionAnalyser-method}

\title{The \code{mtkRegressionAnalyser} class}

\description{
The \code{mtkRegressionAnalyser} class is a sub-class of the  class \code{\linkS4class{mtkAnalyser}}. It implements the sensitivity analysis method \code{Regression} and provides all the slots and methods defined in the class \code{\linkS4class{mtkAnalyser}}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyser}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkRegressionAnalyser]{mtkRegressionAnalyser}}}{signature(mtkParameters = NULL, listParameters = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "analyze".}
\item{\code{protocol}:}{(\code{\link{character}}) always takes the string "R".}
\item{\code{site}:}{(\code{\link{character}}) always takes the string "mtk".}
\item{\code{service}:}{(\code{\link{character}}) always takes the string "Regression".}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkRegressionAnalyser", name = "character"): Not used, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkRegressionAnalyser", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=setParameters-methods]{getParameters}}}{signature(this = "mtkRegressionAnalyser"): Gets the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkRegressionAnalyser"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkRegressionAnalyser", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkRegressionAnalyser"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkRegressionAnalyser", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkRegressionAnalyser"): Returns the results produced by the process as a [\code{\linkS4class{mtkRegressionAnalyserResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkRegressionAnalyser"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkRegressionAnalyser"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkRegressionAnalyser", context= "mtkExpWorkflow"): Generates the experimental design by sampling the factors.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkRegressionAnalyser"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkRegressionAnalyser"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkRegressionAnalyser"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkRegressionAnalyser"): Reports the results produced by the process.}
}}

\seealso{\code{help(morris, sensitivity)} and \code{help(Regression)}}

\examples{

## Sensitivity analysis of the "Ishigami" model with the "Monte-Carlo" and "Regression" methods


#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp.designer <- mtkBasicMonteCarloDesigner (listParameters=list(size=20))

#   2) the simulation process
		exp.evaluator <- mtkIshigamiEvaluator() 

#   3) the analysis process 
		exp.analyser <- mtkRegressionAnalyser(listParameters=list(nboot=20) )

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp.designer,
		evaluate=exp.evaluator, analyze=exp.analyser))

# 	Run the workflow and report the results.
		run(exp1)
		print(exp1)
	
}


