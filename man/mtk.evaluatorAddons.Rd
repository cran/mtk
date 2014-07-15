\name{mtk.evaluatorAddons}
\alias{mtk.evaluatorAddons}
\title{The \code{mtk.evaluatorAddons} function}
\description{
A function used to extend the "mtk" package with new models  programmed as R functions. 
The \code{mtk.evaluatorAddons} function takes a R file as input and converts it into a \code{mtk} compliant class which
can be seamlessly integrated into the \code{mtk} package.

}


\usage{
mtk.evaluatorAddons(where = NULL, library = NULL, 
	authors = NULL, name = NULL, main = NULL, 
	summary = NULL, plot = NULL, 
	print = NULL)
}

\value{invisble()}
\arguments{
\item{where}{NULL or a file holding the R function to convert.}
\item{library}{NULL or the name of the library if the R function to convert is held in a library.}
\item{authors}{NULL or information about the authors of the R function.}
\item{name}{a string to name the model when used with the "mtk" package.}
\item{main}{the R function which implements the model.}
\item{summary}{NULL or a special version of the "summary" function provided with the model.}
\item{plot}{NULL or a special version of the "plot" function provided with the model.}
\item{print}{NULL or a special version of the "print" function provided with the model.}
}
\details{
The new model must be programmed according to the following syntax:

\code{main <- function(X, ...)}
 where \code{X} is a data.frame holding the experiment design used to run the model simulation.
 
The function \code{main} returns a named list with two elements: \code{main} and \code{information}.
The element \code{main} holds the result of the model simulation  and the element \code{information} is optional,
 may be used to give supplementary information about the simulation process and its results. 
   
 Furthermore, users can redefine the following generic functions to report the results more precisely: 
 	
 	\code{summary (object, ...)},
  	\code{plot(x,y, ...)},
   	\code{print(x, ...)}.
   	
}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# an example implementation of the model "WW" is held  
# in the file "inst/extdata/wwdm.R"

	rFile <- "wwdm.R"
	rFile <- paste(path.package("mtk", quiet = TRUE),
		"/extdata/",rFile,sep = "")

# to covert the model "WW" to a S4 classes compliant with the "mtk" package.
# The generated "mtk" compliant class is called "mtkXXXEvaluator.R" where XXX corresponds
# to the name of the model.

	mtk.evaluatorAddons(where=rFile, authors="H. Monod,INRA", name="WW", main="wwdm.simule")

# to use the model evaluator "WW" with the package "mtk",
# just source the generated new files
	
	source("mtkWWEvaluator.R")

## Use the "mtkWWEvaluator" with the "mtk" package in a seamless way:

# 1) Define the factors

	Eb <- make.mtkFactor(name="Eb", distribName="unif", 
    	  nominal=1.85, distribPara=list(min=0.9, max=2.8))
	Eimax <- make.mtkFactor(name="Eimax", distribName="unif",
    	  nominal=0.94, distribPara=list(min=0.9, max=0.99))
	K <- make.mtkFactor(name="K", distribName="unif", nominal=0.7, 
     	 distribPara=list(min=0.6, max=0.8))
	Lmax <- make.mtkFactor(name="Lmax", distribName="unif", nominal=7.5,
     	 distribPara=list(min=3, max=12))
	A <- make.mtkFactor(name="A", distribName="unif", nominal=0.0065,
    	  distribPara=list(min=0.0035, max=0.01))
	B <- make.mtkFactor(name="B", distribName="unif", nominal=0.00205,
     	 distribPara=list(min=0.0011, max=0.0025))
	TI <- make.mtkFactor(name="TI", distribName="unif", nominal=900,
     	 distribPara=list(min=700, max=1100))

	WW.factors <- mtkExpFactors(list(Eb,Eimax,K,Lmax,A,B,TI))

# 2) Build a workflow  for the "WW" model

	exp <- mtkExperiment(expFactors=WW.factors,
		design="Morris",designInfo=list(type="oat",
			r=10, levels=5, grid.jump=3),
		model="WW", modelInfo=list(year=3),
		analyze="Morris", analyzeInfo=list(type="oat",
			r=10, levels=5, grid.jump=3))
			
## 3) Run the workflow and reports the results

	run(exp)
	summary(exp)

}
