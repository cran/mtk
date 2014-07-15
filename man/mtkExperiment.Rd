\name{mtkExperiment}
\alias{mtkExperiment}
\title{The constructor of the class \code{mtkExperiment}}

\description{A simple way to build a workflow for interactive use. }

\usage{
mtkExperiment(expFactors, 
		design=NULL, designInfo=NULL,
		model=NULL, modelInfo=NULL,
		analyze=NULL, analyzeInfo=NULL,
		XY=NULL)

}
\value{an object of the \code{\linkS4class{mtkExperiment}} class}

\arguments{
\item{expFactors}{(\code{\link{mtkExpFactors}}) an object of the \code{\linkS4class{mtkExpFactors}} class.}
\item{design}{(NULL or \code{\link{character}}) the name of the method used to build the experiment design. NULL means that the experiment design is produced off-line and should be imported through the parameter XY$X.}
\item{designInfo}{(\code{\link{list}})  a named list  to specify the parameters used to generate the experiments design.}
\item{model}{(NULL or \code{\link{character}}) the name of the model to simulate. NULL means that the simulation is produced off-line and should be imported through the parameter XY$Y.}
\item{modelInfo}{(\code{\link{list}})  a named list  to specify the parameters used to manage the model simulation.}
\item{analyze}{(NULL or \code{\link{character}}) the name of the method used to compute the sensitivity index.}
\item{analyzeInfo}{(\code{\link{list}})  a named list  to specify the parameters used to carry out the analyses.}
\item{XY}{(NULL or \code{\link{list}}) a named list with two elements X and Y: X allows importing the experiment design produced off-line and Y allows importing the model simulation produced off-line.}
}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{

# Compute the sensitivity index with the method "Regression"
# over the model "Ishigami" according to an experiment design
# generated with the method "BasicMonteCarlo"

	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
     	distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
    	 distribPara=list(min=-pi, max=pi))
	ishi.factors <- mtkExpFactors(list(x1,x2,x3))

	ishiReg <- mtkExperiment(expFactors=ishi.factors,
		design="BasicMonteCarlo", designInfo=list(size=20),
		model="Ishigami", 
		analyze="Regression", analyzeInfo=list(nboot=20))
			
	run(ishiReg)
	summary(ishiReg)
}
