\name{mtkExperiment-class}
\docType{class}
\alias{mtkExperiment-class}
\alias{addProcess,mtkExperiment,mtkProcess,character-method}
\alias{deleteProcess,mtkExperiment,character-method}
\alias{setProcess,mtkExperiment,mtkProcess,character-method}
\alias{getProcess,mtkExperiment,character-method}
\alias{extractData,mtkExperiment,character-method}
\alias{reevaluate,mtkExperiment,character-method}
\alias{serializeOn,mtkExperiment-method}
\alias{run,mtkExperiment,missing-method}
\alias{summary,mtkExperiment-method}
\alias{print,mtkExperiment-method}
\alias{plot,mtkExperiment-method}
\alias{report,mtkExperiment-method}

\title{The \code{mtkExperiment} class}

\description{
The class \code{mtkExperiment} is a sub-class of the class \code{\linkS4class{mtkExpWorkflow}}. It provides more facilities and more flexible use for interactive manipulation of the workflow. 
Different behaviors may be expected by appropriately combining the parameters: \code{design} -- the method used for the experiment design; \code{model} -- the model used for the simulation; 
\code{analyze} -- the method used for calculating the sensitivity index; \code{XY} -- argument used to provide with data produced off-line; 

For example, 
	1) if the experiment design  is produced off-line, it will be imported with the help of the parameter "XY$X" ;
 	2) if the model simulation  is produced off-line, it will be imported through the parameter "XY$Y"; 
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{\code{\linkS4class{mtkExpWorkflow}}}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkExperiment]{mtkExperiment}}}{signature(expFactors,
		design=NULL, designInfo=NULL,
		model=NULL, modelInfo=NULL,
		analyze=NULL, analyzeInfo=NULL,
		XY=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{expFactors}:}{(\code{\linkS4class{mtkExpFactors}}) an object of the \code{\linkS4class{mtkExpFactors}} class.}
\item{\code{processesVector}:}{(\code{\link{vector}}) a vector of objects from  the class \code{\linkS4class{mtkProcess}} or its sub-classes.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=addProcess-methods]{addProcess}}}{signature(this = "mtkExperiment", p = "mtkProcess", name = "character"): Adds a process to the workflow.}
\item{\code{\link[=deleteProcess-methods]{deleteProcess}}}{signature(this = "mtkExperiment", name = "character"): Deletes a process from  the workflow.}
\item{\code{\link[=setProcess-methods]{setProcess}}}{signature(this = "mtkExperiment", p = "mtkProcess", name = "character"): Replaces a process into the workflow.}
\item{\code{\link[=getProcess-methods]{getProcess}}}{signature(this = "mtkExperiment", name = "character"): Gets a process from the workflow.}
\item{\code{\link[=extractData-methods]{extractData}}}{signature(this = "mtkExperiment", name = "list"): Returns the results produced by the workflow as a data.frame. According to the processes specified with the argument "name", we can fetch the results produced by the process "design", "evaluate" or "analyze". i.e. name=c("design") gives the experimental design produced by the process "design" and name=c("design","evaluate") gives both the experimental design and the model simulation, etc. }
\item{\code{\link[=reevaluate-methods]{reevaluate}}}{signature(this = "mtkExperiment", name = "character"): Re-evaluate the processes of  the workflow to know if they should be re-run. This should be done after changing a process of the workflow. According to the order "design", evaluate", "analyze", only the processes after the one given by the argument "name" will be re-evaluated.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkExperiment", context= "missing"): Runs the ExpWorkflow.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkExperiment"): Returns all data managed by the workflow as a named list.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkExperiment"): Provides a summary of the results produced by the workflow.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkExperiment"): Prints a report of the results produced by the workflow.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkExperiment"): Plots the results produced by the workflow.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkExperiment"): Reports the results produced by the workflow.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{

# Compute the sensitivity index with the method "Regression" 
# over the model "Ishigami" according to an experiment design
# generated with the method "BasicMonteCarlo"

	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
    	 distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
    	 distribPara=list(min=-pi, max=pi))
	factors <- mtkExpFactors(list(x1,x2,x3))

	exp <- mtkExperiment(
		factors, 
		design = 'BasicMonteCarlo',
		designInfo=list(size=20),
		model = 'Ishigami', 
		analyze = 'Regression', 
		analyzeInfo = list(ntboot=20)
		)
	run(exp)
	summary(exp)
}

