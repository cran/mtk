\name{mtkNativeEvaluator-class}
\docType{class}
\alias{mtkNativeEvaluator-class}
\alias{is.ready,mtkNativeEvaluator-method}
\alias{setReady,mtkNativeEvaluator,logical-method}
\alias{is.finished,mtkNativeEvaluator-method}
\alias{setState,mtkNativeEvaluator,logical-method}
\alias{setName,mtkNativeEvaluator,character-method}
\alias{setParameters,mtkNativeEvaluator,vector-method}
\alias{getParameters,mtkNativeEvaluator-method}
\alias{getResult,mtkNativeEvaluator-method}
\alias{getData,mtkNativeEvaluator-method}
\alias{serializeOn,mtkNativeEvaluator-method}
\alias{run,mtkNativeEvaluator,mtkExpWorkflow-method}
\alias{summary,mtkNativeEvaluator-method}
\alias{print,mtkNativeEvaluator-method}
\alias{plot,mtkNativeEvaluator-method}
\alias{report,mtkNativeEvaluator-method}

\title{The \code{mtkNativeEvaluator} class}

\description{
The \code{mtkNativeEvaluator} class is a sub-class of the  class \code{\linkS4class{mtkEvaluator}}  used to manage 
the simulation task implemented locally (i.e. tasks don't need to call services from the Web). It provides all the slots and methods defined in the class \code{\linkS4class{mtkEvaluator}}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkEvaluator}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkNativeEvaluator]{mtkNativeEvaluator}}}{signature(model=NULL, Y=NULL, information=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{model}:}{(\code{\link{ANY}})  a string, an R fonction, or NULL to inform the model to simulate.}
\item{\code{name}:}{(\code{\link{character}})  always takes the string "evaluate".}
\item{\code{protocol}:}{(\code{\link{character}}) a string to name the protocol used to run the process: http, system, R, etc. Here, it always takes "R".}
\item{\code{site}:}{(\code{\link{character}}) a string to indicate where the service is located. Here, it always takes "mtk".}
\item{\code{service}:}{(\code{\link{character}}) a string to name the service to invoke.}
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkNativeEvaluator", name = "character"): Not used, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkNativeEvaluator", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkNativeEvaluator"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkNativeEvaluator"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkNativeEvaluator", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkNativeEvaluator"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkNativeEvaluator", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkNativeEvaluator"): Returns the results produced by the process as a [\code{\linkS4class{mtkEvaluatorResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkNativeEvaluator"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkNativeEvaluator"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkNativeEvaluator", context= "mtkExpWorkflow"): runs the simulation.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkNativeEvaluator"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkNativeEvaluator"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkNativeEvaluator"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkNativeEvaluator"): Reports the results produced by the process.}
}}
\section{Details}{
We can construct an object of the \code{\linkS4class{mtkNativeEvaluator}} class from the following situations: 
1) 
2) 3) the experimental design is produced off-line and available as a data.frame.

We can construct an object of the \code{\linkS4class{mtkNativeEvaluator}} class from the following situations: 
\enumerate{
	\item The evaluator is provided within the package "mtk";
	\item The evaluator is provided as an R function outside the package "mtk"; 
	\item The simulation is carried out off-line. We just want to use the "mtk" package for reporting.
	}
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
## 1) Create a model simulation  with the model "Ishigami" implemented in the package "mtk"
	
	evaluator <- mtkNativeEvaluator(model="Ishigami")
	
## 2) Create a model simulation  with a R function implemented outside the package "mtk"

#	a) Create a R function to represent the model of population

	ME <- function(K, Y0, a, t=5, ...){
	
	res <- exp(-a*t)
	res <- Y0+res*(K-Y0)
	res <- K*Y0/res
	out <- as.integer(res)
	
	return(out)	
	}
#	b) Do the sensitivity analysis for the function "ME"

	K <- make.mtkFactor(name="K", nominal=400, distribName="unif",
		distribPara=list(min=100, max=1000))
	Y0 <- make.mtkFactor(name="Y0", nominal=20, distribName="unif",
		distribPara=list(min=1, max=40))
	a <- make.mtkFactor(name="a", nominal=0.1, distribName="unif", 
		distribPara=list(min=0.05, max=0.2))
	factors <- mtkExpFactors(list(K,Y0,a))


	plan <- mtkNativeDesigner ("BasicMonteCarlo", 
		information=c(size=500))

	model <- mtkNativeEvaluator(model=ME, information=c(t=5))

	index<- mtkNativeAnalyser("Regression", information=c(nboot=20) )

	expt <- mtkExpWorkflow( expFactors=factors,
		processesVector=c(
				design= plan,
				evaluate= model,
				analyze= index)
		)
	run(expt)
	summary(expt)
	
##	3) Import the results of model simulation produced off-line 
##	   into an object of mtkNativeEvaluator

	data <- data.frame()
	model <- mtkNativeEvaluator(Y=data, 
		information = list(model="Ishigami"))
}

