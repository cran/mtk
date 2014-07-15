\name{mtkExpWorkflow}
\alias{mtkExpWorkflow}
\title{The constructor of the class \code{mtkExpWorkflow}}

\description{The class \code{mtkExpWorkflow} is used to manage the processes involved in a sensitivity analysis.
 We can construct a workflow in two ways: either from pre-defined factors and processes or from a XML file. }

\usage{
	mtkExpWorkflow(
		expFactors = NULL, 
		processesVector = NULL, 
		xmlFilePath = NULL
		)

}
\value{an object of the \code{\linkS4class{mtkExpWorkflow}} class}

\arguments{
\item{expFactors}{(\code{\link{mtkExpFactors}}) an object of the \code{\linkS4class{mtkExpFactors}} class.}
\item{processesVector}{(\code{\link{vector}}) a vector of objects from  the class \code{\linkS4class{mtkProcess}} or its sub-classes.}
\item{xmlFilePath}{(\code{\link{character}}) a string holding the name of the XML file and its path.}
}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{

############## 
# Example 1: Construct a workflow 
# from the factors and the processes
##############

	x1 <- make.mtkFactor(name="x1", distribName="unif",
	 	distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
    	 distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
    	 distribPara=list(min=-pi, max=pi))
	ishi.factors <- mtkExpFactors(list(x1,x2,x3))


	designer <- mtkNativeDesigner("BasicMonteCarlo", 
            information=list(size=20))
	model <- mtkNativeEvaluator("Ishigami" )
	analyser <- mtkNativeAnalyser("Regression", information=list(nboot=20) )

	ishiReg <- mtkExpWorkflow(expFactors=ishi.factors,
		   processesVector=c( design=designer,
				      evaluate=model,
				      analyze=analyser)
			  				)
	run(ishiReg)
	summary(ishiReg)

############## 
######## Example 2: Construct a workflow from a XML file
##############
# Create a workflow from XML file
	## Nota: If your XML file is a local file
	## for example /var/tmp/X.xml", you should
	## create the workflow as follows: 
	## workflow <- mtkExpWorkflow(
	##   xmlFilePath="/var/tmp/X.xml"
	## )


	xmlFile <- "WWDM_morris.xml"
	
	## If WWDM_morris.xml is a local file, the next line is not necessary.
	xmlFilePath <- paste(path.package("mtk", quiet = TRUE),
		"/extdata/",xmlFile,sep = "") 

	workflow <- mtkExpWorkflow(xmlFilePath=xmlFilePath)

# Run the workflow and report the results
	run(workflow)
	summary(workflow)

}
