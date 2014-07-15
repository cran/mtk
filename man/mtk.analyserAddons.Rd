\name{mtk.analyserAddons}
\alias{mtk.analyserAddons}
\title{The \code{mtk.analyserAddons} function}
\description{A function used to extend the "mtk" package with new analysis methods programmed as R functions. 
The \code{mtk.analyserAddons} function takes a R file as input and converts it into a \code{mtk} compliant class which
can be seamlessly integrated into the \code{mtk} package.

}

\usage{mtk.analyserAddons(where = NULL, library = NULL, 
						  authors = NULL, name = NULL,
                          main = NULL,
                          summary = NULL, 
                          plot = NULL,
                          print = NULL)
                          }
\value{invisble()}
\arguments{
\item{where}{NULL or a file holding the R function to convert.}
\item{library}{NULL or the name of the library if the R function to convert is held in a library.}
\item{authors}{NULL or information about the authors of the R function.}
\item{name}{a string to name the method when used with the "mtk" package.}
\item{main}{the R function which implements the method.}
\item{summary}{NULL or a subversion of the \code{summary} function provided with the method.}
\item{plot}{NULL or a reprogrammed version of the \code{plot} function provided with the method.}
\item{print}{NULL or a reprogrammed version of the \code{print} function provided with the method.}
}
\details{
The new method must be programmed according to the following syntax:

\code{main <- function(X, Y, ...)}
 where \code{X} is a data.frame holding the experiment design, 
 and \code{Y} is a data.frame holding the results produced by the model simulation.
 
 The function \code{main} returns a named list with two elements: \code{main} and \code{information}. The element 
 \code{main} holds the result of the sensitivity analysis and the element \code{information} is optional,
 may be used to give supplementary information about the analysis process and the produced results. 
   
 Furthermore, in order to report the analysis results more precisely, users can redefine the generic functions: 
 	\code{summary (object, ...)},
  	\code{plot(x,y, ...)},
   	\code{print(x, ...)}.
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}
\examples{
# an example implementation of the method "Regression" 
# called here "RegressionTest" is held  in the file
#  "inst/extdata/regressionSI.R"

rFile <- "regressionSI.R"
rFile <- paste(path.package("mtk", quiet = TRUE),
		"/extdata/",rFile,sep = "")


# to convert the method "RegressionTest" to S4 classes
# compliant with the "mtk" package. The generated "mtk" compliant class
# is called "mtkXXXAnalyser.R" where XXX corresponds to the name of the method.

mtk.analyserAddons(where=rFile, authors="H. Monod,INRA",
		 name="RegressionTest",
  		main="regressionSI", print="print.regressionSI",
  	    plot="plot.regressionSI")

# To use the method "RegressionTest" with the package "mtk",
# just source the generated new files

source("mtkRegressionTestAnalyser.R")

## Use the method "RegressionTest" to do sensitivity analysis

#	1) Define the factors
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
    	 distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
    	 distribPara=list(min=-pi, max=pi))
	ishi.factors <- mtkExpFactors(list(x1,x2,x3))

# 	2) Create a workflow with the "Ishigami" model and analyze it with the new method
	ishiReg <- mtkExperiment(expFactors=ishi.factors,
			design="BasicMonteCarlo",designInfo=list(size=20),
			model="Ishigami", 
			analyze="RegressionTest", 
			)
# 	3) Run the workflow and report the results			
	run(ishiReg)
	summary(ishiReg)
}
