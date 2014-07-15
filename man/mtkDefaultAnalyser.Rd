\name{mtkDefaultAnalyser}
\alias{mtkDefaultAnalyser}
\title{The constructor of the class \code{mtkDefaultAnalyser}}

\description{This class is used when both the experimental design  and the sensitivity analysis are fulfilled with the same method. }
\usage{
mtkDefaultAnalyser()
}
\value{an object of the \code{\linkS4class{mtkDefaultAnalyser}} class}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{
J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.
}


\examples{
# creates a designer and an analyser avec the method "Morris" 
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
	exp1.designer <- mtkNativeDesigner(design="Morris", 
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
