\name{is.ready-methods}
\alias{is.ready-methods}
\alias{is.ready}
\title{The \code{is.ready} method}
\description{Tests if the process is ready to run.}
\usage{is.ready(this)}
\value{TRUE or FALSE.}
\arguments{
\item{this}{the underlying object of the class \code{\linkS4class{mtkProcess}}}
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}
\examples{

## This method is usually used only for the package's core programming!!!

# creates an experimental design with the method "Morris"
# to analyze the model "Ishigami":

# Specify the factors to analyze:

	x1 <- make.mtkFactor(name="x1", distribName="unif",
	 distribPara=list(min=-pi, max=pi)) 
	x2 <- make.mtkFactor(name="x2", distribName="unif",
     distribPara=list(min=-pi, max=pi)) 
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
     distribPara=list(min=-pi, max=pi)) 
	
	factors <- mtkExpFactors(list(x1,x2,x3)) 
	
# Build the designer:

	exp1.designer <- mtkNativeDesigner(design="Morris", 
	      information=list(r=20,type="oat",levels=4,grid.jump=2))
	
# Test if the process is ready to run

	is.ready(exp1.designer)

}
