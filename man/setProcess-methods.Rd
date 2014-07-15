\name{setProcess-methods}
\alias{setProcess-methods}
\alias{setProcess}
\title{The \code{setProcess} method}
\description{Places or replaces a process into the workflow.}
\usage{setProcess(this, p, name)}
\value{invisble()}
\arguments{
\item{this}{the underlying object of the class \code{\linkS4class{mtkExpWorkflow}}.}
\item{p}{an object of the class \code{\linkS4class{mtkProcess}}.}
\item{name}{a string from "design", "evaluate", or "analyze" to specify the process to place or replace.}
}
\section{Details}{
This method is especially useful when we need to compare different methods or models.
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Analyze the "Ishigami" model with the "Regression" method

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

# Re-analyzes the model "Ishigami" with the method "Morris"

#	1) Build a designer with the method "Morris" and put it into the workflow
	morris.designer <- mtkNativeDesigner(
		design="Morris", 
		information=list(r=20,type="oat",levels=4,grid.jump=2)
		) 
	setProcess(ishiReg, morris.designer, "design")
	
#	2) Build an analysis process with the default method and put it
#     into the workflow
		default.analyser <- mtkDefaultAnalyser()
		setProcess(ishiReg, default.analyser, "analyze")
#	3) Run the new workflow

	run(ishiReg)
	summary(ishiReg)
}
