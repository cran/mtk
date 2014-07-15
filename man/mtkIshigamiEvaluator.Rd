\name{mtkIshigamiEvaluator}
\alias{mtkIshigamiEvaluator}
\title{The constructor of the class \code{mtkIshigamiEvaluator}}

\description{The constructor}

\usage{mtkIshigamiEvaluator()}
\value{an object of the \code{\linkS4class{mtkIshigamiEvaluator}} class}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{

# Carry out a sensitivity analysis with the Ishigami model

##	Input the factors
	data(Ishigami.factors)

##	Specify the experiments designer
	designer <- mtkNativeDesigner ("BasicMonteCarlo", 
		information=list(size=20))

##	Specify the model simulator
	model <- mtkIshigamiEvaluator()
	
##	Specify the sensiticity analyser
	analyser <- mtkNativeAnalyser("Regression", information=list(nboot=20) )

##	Specify the workflow
	ishiReg <- new("mtkExpWorkflow", expFactors=Ishigami.factors,
		   processesVector=c(
				              design=designer,
				              evaluate=model,
				              analyze=analyser)
			  				)
## Run and report the results
	run(ishiReg)
	summary(ishiReg)

}
