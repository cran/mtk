\name{getData-methods}
\alias{getData-methods}
\alias{getData}
\title{The \code{getData} method}
\description{Returns the results produced by the process as a data.frame.}
\usage{getData(this)}
\value{a data.frame.}
\arguments{
\item{this}{an object of the class \code{\linkS4class{mtkProcess}} or its sub-classes}
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}
\examples{
## Example: Sensitivity analysis for the Ishigami model

# Define the factors
	x1 <- make.mtkFactor(name="x1", distribName="unif",
	 	distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
   	  distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
   	  distribPara=list(min=-pi, max=pi))
	ishi.factors <- mtkExpFactors(list(x1,x2,x3))

# Build the processes
	designer <- mtkNativeDesigner("BasicMonteCarlo", 
            information=list(size=20))
	model <- mtkNativeEvaluator("Ishigami" )
	analyser <- mtkNativeAnalyser("Regression", information=list(nboot=20) )

# Build the workflow and run it
	ishiReg <- mtkExpWorkflow(expFactors=ishi.factors,
		   processesVector=c( design=designer,
				      evaluate=model,
				      analyze=analyser)
			  				)
	run(ishiReg)

# Extract as a data.frame the experiment design:
	designer <- getProcess(ishiReg, "design")
	expDesign <- getData(designer)


}
