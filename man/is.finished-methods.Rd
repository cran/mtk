\name{is.finished-methods}
\alias{is.finished-methods}
\alias{is.finished}
\title{The \code{is.finished} method}
\description{Tests if the process has run and the results produced by the process are available.}
\usage{is.finished(this)}
\value{TRUE or FALSE.}
\arguments{
\item{this}{the underlying object of the class \code{\linkS4class{mtkProcess}}}
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
	
	ishiReg <- mtkExpWorkflow(expFactors=ishi.factors,
		   processesVector=c(design=designer)
		   )
	run(ishiReg)

# Extract the process "design" and test if it is correctly executed.

	designer <- getProcess(ishiReg, "design")
	is.finished(designer)
}

