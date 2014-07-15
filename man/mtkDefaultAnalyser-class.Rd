\name{mtkDefaultAnalyser-class}
\docType{class}
\alias{mtkDefaultAnalyser-class}
\alias{is.ready,mtkDefaultAnalyser-method}
\alias{setReady,mtkDefaultAnalyser,logical-method}
\alias{is.finished,mtkDefaultAnalyser-method}
\alias{setState,mtkDefaultAnalyser,logical-method}
\alias{setName,mtkDefaultAnalyser,character-method}
\alias{setParameters,mtkDefaultAnalyser,vector-method}
\alias{getParameters,mtkDefaultAnalyser-method}
\alias{getResult,mtkDefaultAnalyser-method}
\alias{getData,mtkDefaultAnalyser-method}
\alias{serializeOn,mtkDefaultAnalyser-method}
\alias{run,mtkDefaultAnalyser,mtkExpWorkflow-method}
\alias{summary,mtkDefaultAnalyser-method}
\alias{print,mtkDefaultAnalyser-method}
\alias{plot,mtkDefaultAnalyser-method}
\alias{report,mtkDefaultAnalyser-method}

\title{The \code{mtkDefaultAnalyser} class}

\description{
The \code{mtkDefaultAnalyser} class is a sub-class of the  class \code{\linkS4class{mtkAnalyser}}. It provides all the slots and methods defined in the class \code{\linkS4class{mtkAnalyser}}. The \code{mtkDefaultAnalyser} class is used when the method used for the sensitivity analysis is the same as the method used for the experiment design.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkAnalyser}}}
\item{Direct Known Subclasses :}{ }
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkDefaultAnalyser]{mtkDefaultAnalyser}}}{signature()}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "analyze".}
\item{\code{protocol}:}{(\code{\link{character}}) a string to name the protocol used to run the process: http, system, R, etc.}
\item{\code{site}:}{(\code{\link{character}}) a string to indicate where the service is located.}
\item{\code{service}:}{(\code{\link{character}}) a string to name the service to invoke.}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}


\section{Methods}{
\describe{

\item{setName}{signature(this = "mtkDefaultAnalyser", name = "character"): Not used, method inherited from the parent class.}
\item{setParameters}{signature(this = "mtkDefaultAnalyser", f = "vector"): Assigns new parameters to  the process.}
\item{getParameters}{signature(this = "mtkDefaultAnalyser"): Returns the parameters as a named list.}
\item{is.ready}{signature( = "mtkDefaultAnalyser"): Tests if the process is ready to run.}
\item{setReady}{signature(this = "mtkDefaultAnalyser", switch = "logical"): Makes the process ready to run.}
\item{is.ready}{signature( = "mtkDefaultAnalyser"): Tests if the results produced by the process are available.}
\item{setReady}{signature(this = "mtkDefaultAnalyser", switch = "logical"): Marks the process as already executed.}
\item{getResult}{signature(this = "mtkDefaultAnalyser"): Returns the results produced by the process as a \code{\linkS4class{mtkAnalyserResult}}.}
\item{getData}{signature(this = "mtkDefaultAnalyser"): Returns the results produced by the process as a data.frame.}
\item{serializeOn}{signature(this = "mtkDefaultAnalyser"): Returns all data managed by the process as a named list.}
\item{run}{signature(this = "mtkDefaultAnalyser", context= "mtkExpWorkflow"): Runs the sensitivity analysis defined in the context.}
\item{summary}{signature(object = "mtkDefaultAnalyser"): Provides a summary of the results produced by the process.}
\item{print}{signature(x = "mtkDefaultAnalyser"): Prints a report of the results produced by the process.}
\item{plot}{signature(x = "mtkDefaultAnalyser"): Reports graphically the results produced by the process.}
\item{report}{signature(this = "mtkDefaultAnalyser"): Reports the results produced by the process.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{
J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.
}

\examples{
# Create a designer and an analyser avec the method "Morris"
# to analyze the model "Ishigami":

# Specify the factors to analyze:
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi)) 
	x2 <- make.mtkFactor(name="x2", distribName="unif",
   	  distribPara=list(min=-pi, max=pi)) 
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
   	  distribPara=list(min=-pi, max=pi)) 
		factors <- mtkExpFactors(list(x1,x2,x3)) 
# Build the processes:
#   1) the experimental design process with the method "Morris".
	exp1.designer <- mtkNativeDesigner(design = "Morris",
		 information=list(r=20,type="oat",levels=4,grid.jump=2)) 

#   2) the model simulation process with the model "Ishigami".
	exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process with the default method.
#      Here, it is the "Morris" method.
	exp1.analyser <- mtkDefaultAnalyser()

# Build the  workflow with the processes defined previously.
	exp1 <- mtkExpWorkflow(expFactors=factors,
	    processesVector = c(design=exp1.designer,
		evaluate=exp1.evaluator, analyze=exp1.analyser))
		
# Run the workflow and report the results.
	run(exp1)
	print(exp1)
}

