\name{mtkIshigamiEvaluator-class}
\docType{class}
\alias{mtkIshigamiEvaluator-class}
\alias{is.ready,mtkIshigamiEvaluator-method}
\alias{setReady,mtkIshigamiEvaluator,logical-method}
\alias{is.finished,mtkIshigamiEvaluator-method}
\alias{setState,mtkIshigamiEvaluator,logical-method}
\alias{setName,mtkIshigamiEvaluator,character-method}
\alias{setParameters,mtkIshigamiEvaluator,vector-method}
\alias{getParameters,mtkIshigamiEvaluator-method}
\alias{getResult,mtkIshigamiEvaluator-method}
\alias{getData,mtkIshigamiEvaluator-method}
\alias{serializeOn,mtkIshigamiEvaluator-method}
\alias{run,mtkIshigamiEvaluator,mtkExpWorkflow-method}
\alias{summary,mtkIshigamiEvaluator-method}
\alias{print,mtkIshigamiEvaluator-method}
\alias{plot,mtkIshigamiEvaluator-method}
\alias{report,mtkIshigamiEvaluator-method}

\title{The \code{mtkIshigamiEvaluator} class}

\description{
The \code{mtkIshigamiEvaluator} class is a sub-class of the  class \code{\linkS4class{mtkEvaluator}}  used to manage 
the simulation of the model \code{Ishigami}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkEvaluator}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkIshigamiEvaluator]{mtkIshigamiEvaluator}}}{signature()}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "evaluate".}
\item{\code{protocol}:}{(\code{\link{character}}) a string to name the protocol used to run the process: http, system, R, etc. Here, it takes the character "R".}
\item{\code{site}:}{(\code{\link{character}}) a string to indicate where the service is located. Here, it always takes the string "mtk".}
\item{\code{service}:}{(\code{\link{character}}) a string to name the service to invoke. Here, it always takes the string "Ishigami". }
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service. The "Ishigami" model does not need parameters.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkIshigamiEvaluator", name = "character"): non useful, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkIshigamiEvaluator", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkIshigamiEvaluator"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkIshigamiEvaluator"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkIshigamiEvaluator", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkIshigamiEvaluator"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkIshigamiEvaluator", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkIshigamiEvaluator"): Returns the results produced by the process as a [\code{\linkS4class{mtkEvaluatorResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkIshigamiEvaluator"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkIshigamiEvaluator"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkIshigamiEvaluator", context= "mtkExpWorkflow"): runs the simulation.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkIshigamiEvaluator"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkIshigamiEvaluator"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkIshigamiEvaluator"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkIshigamiEvaluator"): Reports the results produced by the process.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{

# Carry out a sensitivity analysis with the Ishigami model

##	Input the factors
	data(Ishigami.factors)

##	Specify the experiments designer
	designer <- mtkNativeDesigner ("BasicMonteCarlo", 
		information=list(size=20))

##	Specify the model simulator
	model <- mtkIshigamiEvaluator()
	
##	Specify the sensiticity analyser
	analyser <- mtkNativeAnalyser("Regression", information=list(nboot=20) )

##	Specify the workflow
	ishiReg <- new("mtkExpWorkflow", expFactors=Ishigami.factors,
		   processesVector=c(
				              design=designer,
				              evaluate=model,
				              analyze=analyser)
			  				)
## Run and report the results
	run(ishiReg)
	summary(ishiReg)

}

