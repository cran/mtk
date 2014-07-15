\name{mtkFastAnalyser-class}
\docType{class}
\alias{mtkFastAnalyser-class}
\alias{is.ready,mtkFastAnalyser-method}
\alias{setReady,mtkFastAnalyser,logical-method}
\alias{is.finished,mtkFastAnalyser-method}
\alias{setState,mtkFastAnalyser,logical-method}
\alias{setName,mtkFastAnalyser,character-method}
\alias{setParameters,mtkFastAnalyser,vector-method}
\alias{getParameters,mtkFastAnalyser-method}
\alias{getResult,mtkFastAnalyser-method}
\alias{getData,mtkFastAnalyser-method}
\alias{serializeOn,mtkFastAnalyser-method}
\alias{run,mtkFastAnalyser,mtkExpWorkflow-method}
\alias{summary,mtkFastAnalyser-method}
\alias{print,mtkFastAnalyser-method}
\alias{plot,mtkFastAnalyser-method}
\alias{report,mtkFastAnalyser-method}

\title{The \code{mtkFastAnalyser} class}

\description{
The \code{mtkFastAnalyser} class is a sub-class of the  class \code{\linkS4class{mtkAnalyser}}.
 It implements the sensitivity analysis method 'Fast' and provides all the slots and methods 
 defined in the class \code{\linkS4class{mtkAnalyser}}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyser}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkFastAnalyser]{mtkFastAnalyser}}}{signature(mtkParameters = NULL, listParameters = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}}):  always takes the string "analyze".}
\item{\code{protocol}:}{(\code{\link{character}}): always takes the string "R".}
\item{\code{site}:}{(\code{\link{character}}): always takes the string "mtk".}
\item{\code{service}:}{(\code{\link{character}}): always takes the string "Fast".}
\item{\code{parameters}:}{(\code{\link{vector}}): a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}): a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}): a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}): a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkFastAnalyser", name = "character"): Not used, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkFastAnalyser", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkFastAnalyser"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkFastAnalyser"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkFastAnalyser", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkFastAnalyser"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkFastAnalyser", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkFastAnalyser"): Returns the results produced by the process as a [\code{\linkS4class{mtkAnalyserResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkFastAnalyser"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkFastAnalyser"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkFastAnalyser", context= "mtkExpWorkflow"): Generates the experimental design by sampling the factors.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkFastAnalyser"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkFastAnalyser"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkFastAnalyser"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkFastAnalyser"): Reports the results produced by the process.}
}}
\references{
\enumerate{
\item A. Saltelli, K. Chan and E. M. Scott (2000). Sensitivity Analysis. Wiley, New York.
\item J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.
}
}

\seealso{\code{help(fast, sensitivity)}}

\examples{

##			 Sensitivity analysis of the "Ishigami" model with the "Fast" method 

#	Input the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkFastDesigner(listParameters
	    	= list(n=1000)) 

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process 
		exp1.analyser <- mtkFastAnalyser()

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp1.designer,
		evaluate=exp1.evaluator, analyze=exp1.analyser))

# 	Run the workflow and reports the results.
		run(exp1)
		print(exp1)


}

