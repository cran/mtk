\name{mtkExpWorkflow-class}
\docType{class}
\alias{mtkExpWorkflow-class}
\alias{addProcess,mtkExpWorkflow,mtkProcess,character-method}
\alias{deleteProcess,mtkExpWorkflow,character-method}
\alias{setProcess,mtkExpWorkflow,mtkProcess,character-method}
\alias{getProcess,mtkExpWorkflow,character-method}
\alias{extractData,mtkExpWorkflow,character-method}
\alias{reevaluate,mtkExpWorkflow,character-method}
\alias{serializeOn,mtkExpWorkflow-method}
\alias{run,mtkExpWorkflow,missing-method}
\alias{summary,mtkExpWorkflow-method}
\alias{print,mtkExpWorkflow-method}
\alias{plot,mtkExpWorkflow-method}
\alias{report,mtkExpWorkflow-method}

\title{The \code{mtkExpWorkflow} class}

\description{
The \code{mtkExpWorkflow} class is  used to coordinate the processes involved in a sensitivity analysis. It controls the state of the processes and coordinates their chaining. 
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkExpWorkflow]{mtkExpWorkflow}}}{signature(expFactors=NULL, processesVector=NULL, xmlFilePath=NULL)}
}}

\section{Slots}{
\describe{
\item{\code{expFactors}:}{(\code{\linkS4class{mtkExpFactors}}) an object of the \code{\linkS4class{mtkExpFactors}} class.}
\item{\code{processesVector}:}{(\code{\link{vector}}) a vector of objects from  the class \code{\linkS4class{mtkProcess}} or its sub-classes.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=addProcess-methods]{addProcess}}}{signature(this = "mtkExpWorkflow", p = "mtkProcess", name = "character"): Adds a process to the workflow.}
\item{\code{\link[=deleteProcess-methods]{deleteProcess}}}{signature(this = "mtkExpWorkflow", name = "character"): Deletes a process from  the workflow.}
\item{\code{\link[=setProcess-methods]{setProcess}}}{signature(this = "mtkExpWorkflow", p = "mtkProcess", name = "character"): Replaces a process into the workflow.}
\item{\code{\link[=getProcess-methods]{getProcess}}}{signature(this = "mtkExpWorkflow", name = "character"): Gets a process from the workflow.}
\item{\code{\link[=extractData-methods]{extractData}}}{signature(this = "mtkExpWorkflow", name = "list"): Returns the results produced by the workflow as a data.frame. According to the processes specified with the argument "name", we can fetch the results produced by the process "design", "evaluate" or "analyze". i.e. name=c("design") gives the experimental design produced by the process "design" and name=c("design","evaluate") gives both the experimental design and the model simulation, etc. }
\item{\code{\link[=reevaluate-methods]{reevaluate}}}{signature(this = "mtkExpWorkflow", name = "character"): Re-evaluate the processes of  the workflow to know if they should be re-run. This should be done after changing a process of the workflow. According to the order "design", evaluate", "analyze", only the processes after the one given by the argument "name" will be re-evaluated.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkExpWorkflow", context= "missing"): Runs the workflow.}
\item{\code{\link[=serializeOn-methods]{serializeOn}}}{signature(this = "mtkExpWorkflow"): Returns all data managed by the workflow as a named list.}
\item{\code{\link[=summary,mtkProcess-method]{summary}}}{signature(object = "mtkExpWorkflow"): Provides a summary of the results produced by the workflow.}
\item{\code{\link[=print,mtkProcess-method]{print}}}{signature(x = "mtkExpWorkflow"): Prints a report of the results produced by the workflow.}
\item{\code{\link[=plot,mtkProcess-method]{plot}}}{signature(x = "mtkExpWorkflow"): Plots the results produced by the workflow.}
\item{\code{\link[=report-methods]{report}}}{signature(this = "mtkExpWorkflow"): Reports the results produced by the workflow.}
}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{

############## 
# Example 1: Construct a workflow 
# from the factors and the processes
##############

# Specify the factors
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
    	 distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
    	 distribPara=list(min=-pi, max=pi))
	ishi.factors <- mtkExpFactors(list(x1,x2,x3))

# Define the processes
	designer <- mtkNativeDesigner("BasicMonteCarlo", 
            information=list(size=20))
	model <- mtkNativeEvaluator("Ishigami" )
	analyser <- mtkNativeAnalyser("Regression", information=list(nboot=20) )

# Build the workflow
	ishiReg <- mtkExpWorkflow( expFactors=ishi.factors,
		   processesVector=c( design=designer,
				      evaluate=model,
				      analyze=analyser)
			  				)
			  				
# Run the workflow and report the results
	run(ishiReg)
	summary(ishiReg)

############## 
######## Example 2: Construct a workflow from a XML file
##############
# # XML file is held in the directory of the library: "inst/extdata/"

# Specify the XML file's name
	xmlFile <- "WWDM_morris.xml"
## find where the examples are held.
	xmlFilePath <- paste(path.package("mtk", quiet = TRUE),
			"/extdata/",xmlFile,sep = "") 
		
# Create the workflow from the XML
	## Nota: If your XML file is local
	## file for example /var/tmp/X.xml", you should
	## create the workflow as follows: 
	## workflow <- mtkExpWorkflow(
	## xmlFilePath = "/var/tmp/X.xml"
	## )

	workflow <- mtkExpWorkflow(xmlFilePath=xmlFilePath)

# Run the workflow and report the results
	run(workflow)
	summary(workflow)

}

