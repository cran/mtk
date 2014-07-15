\name{mtkWWDMEvaluator-class}
\docType{class}
\alias{mtkWWDMEvaluator-class}
\alias{is.ready,mtkWWDMEvaluator-method}
\alias{setReady,mtkWWDMEvaluator,logical-method}
\alias{is.finished,mtkWWDMEvaluator-method}
\alias{setState,mtkWWDMEvaluator,logical-method}
\alias{setName,mtkWWDMEvaluator,character-method}
\alias{setParameters,mtkWWDMEvaluator,vector-method}
\alias{getParameters,mtkWWDMEvaluator-method}
\alias{getResult,mtkWWDMEvaluator-method}
\alias{getData,mtkWWDMEvaluator-method}
\alias{serializeOn,mtkWWDMEvaluator-method}
\alias{run,mtkWWDMEvaluator,mtkExpWorkflow-method}
\alias{summary,mtkWWDMEvaluator-method}
\alias{print,mtkWWDMEvaluator-method}
\alias{plot,mtkWWDMEvaluator-method}
\alias{report,mtkWWDMEvaluator-method}

\title{The \code{mtkWWDMEvaluator} class}

\description{
The \code{mtkWWDMEvaluator} class is a sub-class of the  class \code{\linkS4class{mtkEvaluator}}  used to manage 
the simulation of the model \code{WWDM}.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkEvaluator}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkWWDMEvaluator]{mtkWWDMEvaluator}}}{signature(mtkParameters = NULL, listParameters = NULL)}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{(\code{\link{character}})  always takes the string "evaluate".}
\item{\code{protocol}:}{(\code{\link{character}}) a string to name the protocol used to run the process: http, system, R, etc. Here, it always takes the character "R".}
\item{\code{site}:}{(\code{\link{character}}) a string to indicate where the service is located. Here, it always takes the string "mtk".}
\item{\code{service}:}{(\code{\link{character}}) a string to name the service to invoke. Here, it always takes the string "WWDM". }
\item{\code{parameters}:}{(\code{\link{vector}}) a vector of [\code{\linkS4class{mtkParameter}}] containing the parameters to pass while calling the service. The WWDM model does not need parameters.}
\item{\code{ready}:}{(\code{\link{logical}}) a logical to tell if the process is ready to run.}
\item{\code{state}:}{(\code{\link{logical}}) a logical to tell if the results produced by the process are available and ready to be consumed.}
\item{\code{result}:}{(\code{\link{ANY}}) a data holder to hold the results produced by the process}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkWWDMEvaluator", name = "character"): Not used, method inherited from the parent class.}
\item{\code{\link[=setParameters-methods]{setParameters}}}{signature(this = "mtkWWDMEvaluator", f = "vector"): Assigns new parameters to  the process.}
\item{\code{\link[=getParameters-methods]{getParameters}}}{signature(this = "mtkWWDMEvaluator"): Returns the parameters as a named list.}
\item{\code{\link[=is.ready-methods]{is.ready}}}{signature( = "mtkWWDMEvaluator"): Tests if the process is ready to run.}
\item{\code{\link[=setReady-methods]{setReady}}}{signature(this = "mtkWWDMEvaluator", switch = "logical"): Makes the process ready to run.}
\item{\code{\link[=is.finished-methods]{is.ready}}}{signature( = "mtkWWDMEvaluator"): Tests if the results produced by the process are available.}
\item{\code{\link[=setState-methods]{setReady}}}{signature(this = "mtkWWDMEvaluator", switch = "logical"): Marks the process as already executed.}
\item{\code{\link[=getResult-methods]{getResult}}}{signature(this = "mtkWWDMEvaluator"): Returns the results produced by the process as a [\code{\linkS4class{mtkWWDMEvaluatorResult}}].}
\item{\code{\link[=getData-methods]{getData}}}{signature(this = "mtkWWDMEvaluator"): Returns the results produced by the process as a data.frame.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkWWDMEvaluator"): Returns all data managed by the process as a named list.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkWWDMEvaluator", context= "mtkExpWorkflow"): runs the simulation.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkWWDMEvaluator"): Provides a summary of the results produced by the process.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkWWDMEvaluator"): Prints a report of the results produced by the process.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkWWDMEvaluator"): Plots the results produced by the process.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkWWDMEvaluator"): Reports the results produced by the process.}
}}


\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{
\enumerate{
\item J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.
 \item R. Faivre, D. Makowski, J. Wang, H. Richard, R. Monod (2013). Exploration numérique d'un modèle agronomique avec le package \code{mtk}.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles. 
 }
 }
\seealso{\code{help(WWDM)}}

\examples{

# Carry out a sensitivity analysis with the WWDM model

##	Input the factors
	data(WWDM.factors)

##	Specify the experiments designer
	designer <- mtkMorrisDesigner (
		listParameters = list(type="oat", levels=5, grid.jump=3, r=10)
		)

##	Specify the model simulator
	model <- mtkWWDMEvaluator(
		listParameters = list(year=3)
		)
	
##	Specify the sensiticity analyser
	analyser <- mtkMorrisAnalyser()

##	Specify the workflow
	exp <- new("mtkExpWorkflow", expFactors=WWDM.factors,
		   processesVector=c(
				              design=designer,
				              evaluate=model,
				              analyze=analyser)
			  				)
## Run and report the results
	run(exp)
	summary(exp)

}


