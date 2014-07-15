\name{getProcess-methods}
\alias{getProcess-methods}
\alias{getProcess}
\title{The \code{getProcess} method}
\description{Gets a process from the workflow.}
\usage{getProcess(this,name)}
\value{an object of the class \code{\linkS4class{mtkProcess}}.}
\arguments{
\item{this}{the underlying object of class \code{\linkS4class{mtkExpWorkflow}}.}
\item{name}{a string from "design", "evaluate", or "analyze" to specify the process to fetch.}
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}
\examples{

# Build a workflow to do the sensitivity analysis for the model "Ishigami"
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

# Extract the process "design" or "evaluate" from the workflow for other uses

	designer <- getProcess(ishiReg, "design")
	evaluator <- getProcess(ishiReg, "evaluate")
}
