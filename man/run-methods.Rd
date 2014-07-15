\name{run-methods}
\alias{run-methods}
\alias{run}
\title{The \code{run} method}
\description{Runs a task defined in a process or workflow.
Examples classes in which this function is implemented are the following:
[\code{\linkS4class{mtkParsor}}], [\code{\linkS4class{mtkExpWorkflow}}], [\code{\linkS4class{mtkProcess}}] and their sub-classes .
Examples of "run" are:
\itemize{
\item{\code{run(this, context)}}{"this" is an object of class [\code{\linkS4class{mtkNativeDesigner}}], and "context" is an object of class [\code{\linkS4class{mtkExpWorkflow}}].}
\item{\code{run(this, context)}}{"this" is an object of class [\code{\linkS4class{mtkParsor}}], and "context" is an object of class [\code{\linkS4class{mtkExpWorkflow}}].}
}
}
\usage{run(this,context)}
\arguments{
\item{this}{an object corresponding to the task to launch. It may be an object of the following classes: [\code{\linkS4class{mtkParsor}}], [\code{\linkS4class{mtkExpWorkflow}}], [\code{\linkS4class{mtkProcess}}] or their sub-classes. }
\item{context}{missing or an object specifying the context which manages the task. It may be an object of the following classes: [\code{\linkS4class{mtkExpWorkflow}}]  or its sub-classes.}
}
\author{Juhui WANG, MIA-Jouy, Inra, Juhui.Wang@jouy.inra.fr }

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create a designer and an analyser avec the method "Morris"
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

#   #   3) the analysis process with the default method.
#      Here, it is the Morris method.
		exp1.analyser <- mtkDefaultAnalyser()

# Build the  workflow with the processes defined previously.
		exp1 <- mtkExpWorkflow(expFactors=factors,
	   	 processesVector = c(design=exp1.designer,
			evaluate=exp1.evaluator, analyze=exp1.analyser))
# Run the workflow and plot the results.
		run(exp1)
		print(exp1)
}

