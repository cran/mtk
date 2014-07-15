\name{extractData-methods}
\alias{extractData-methods}
\alias{extractData}
\title{The \code{extractData} method}
\description{Gets the results produced by the workflow as a data.frame.}
\usage{extractData(this,name)}
\value{a data.frame}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkExpWorkflow}}.}
\item{name}{a vector of strings from "design", "evaluate", or "analyze" to specify the results to return. i.e. name =c("design") returns the experimental design 
produced by the designer, name=c("design", "evaluate") returns  both the experimental design produced by the designer and the model simulation produced by the evaluator.}
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}
  
\examples{

# Build a workflow for sensitivity analysis with the model "Ishigami"

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
		   processesVector=c(design = designer,
				      evaluate = model,
				      analyze = analyser)
			  				)
	run(ishiReg)

	# extracts the results produced by the workflow as a data.frame:

	design <- extractData(ishiReg, "design")
	simulation <-  extractData(ishiReg, c("design", "evaluate"))
}
