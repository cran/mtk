\name{deleteProcess-methods}
\alias{deleteProcess-methods}
\alias{deleteProcess}
\title{The \code{deleteProcess} method}
\description{Deletes a process from the workflow.}
\usage{deleteProcess(this, name)}
\value{invisble()}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkExpWorkflow}}.}
\item{name}{a string from "design", "evaluate", or "analyze" to specify the process to delete.}
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}
  
\examples{

# Create an analysis for the Ishigami model:

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

	ishiReg <- mtkExpWorkflow( expFactors=ishi.factors,
		   processesVector=c( design=designer,
				      evaluate=model,
				      analyze=analyser)
			  				)
	run(ishiReg)
	summary(ishiReg)

	# Delete the analysis process from the workflow and 
	# run only the model simulation:

	deleteProcess(ishiReg, "analyze")
	run(ishiReg)
	summary(ishiReg)

}
