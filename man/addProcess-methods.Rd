\name{addProcess-methods}
\alias{addProcess-methods}
\alias{addProcess}
\title{The \code{addProcess} method}
\description{Adds a process to the workflow.}
\usage{addProcess(this,p,name)}
\value{invisble()}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkExpWorkflow}}.}
\item{p}{an object of the class \code{\linkS4class{mtkProcess}}.}
\item{name}{a string from "design", "evaluate", or "analyze" to specify the type of process to add.}
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}
  
\examples{

# Define the factors

	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif", 
		distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
		distribPara=list(min=-pi, max=pi))
	
	ishi.factors <- mtkExpFactors(list(x1,x2,x3))

# Create a workflow to manager the processes used for the analysis task

	ishiReg <- mtkExpWorkflow(expFactors=ishi.factors)

# Create a designer to generate the experiments design and
# put the designer under control of the workflow

	designer <- mtkNativeDesigner("BasicMonteCarlo", 
            information=list(size=20))

	addProcess(ishiReg, designer, name="design")

	# Creates an evaluator and add it to the workflow

	model <- mtkNativeEvaluator("Ishigami" )

	addProcess(ishiReg, model, name="evaluate")

# Create a analyser and add it to the workflow

	analyser <- mtkNativeAnalyser("Regression" )

	addProcess(ishiReg, analyser, name="analyze")

# Run the workflow and reports the results

	run(ishiReg)
	summary(ishiReg)
}
