\name{mtk.designerAddons}
\alias{mtk.designerAddons}
\title{The \code{mtk.designerAddons} function}
\description{
A function used to extend the \code{mtk} package with new design methods programmed as R functions. 
The \code{mtk.designerAddons} function takes a R file as input and converts it into a \code{mtk} compliant class which
can be seamlessly integrated into the \code{mtk} package.
}

\usage{mtk.designerAddons(where = NULL, library = NULL,
 		authors = NULL, name = NULL,
 		main = NULL, summary = NULL, 
 		plot = NULL, print = NULL)}
\value{invisible()}
\arguments{
\item{where}{NULL or the file containing the R functions to convert into native \code{mtk} methods.}
\item{library}{NULL or the name of the package if the R function to convert is included in a package.}
\item{authors}{NULL or information about the authors of the R function.}
\item{name}{a string to name the method when used with the \code{mtk} package.}
\item{main}{the name of the R function implementing the designer.}
\item{summary}{NULL or a special version of the \code{summary} function provided in the file \code{where}.}
\item{plot}{NULL or a special version of the \code{plot} function provided in the file \code{where}.}
\item{print}{NULL or a special version of the \code{print} function provided in the file \code{where}.}
}
\details{
The \code{main} function must have the following syntax:

 \code{main} <- function(factors, distribNames, distribParameters, ...)

where \code{factors} is either a number or a list of strings giving the names of the \code{n} input factors, 
\code{distribNames} is a list of string giving the names of the \code{n} probability distributions that describe the factors' uncertainty, 
and \code{distribParameters} is a list of \code{n} lists specifying the distribution parameters associated with the uncertainty domains.

The R function \code{main}  returns a named list with two elements: the element \code{main} is a data.frame containing the generated experiment design 
and the element \code{information} is an optional list that may be used to provide complementary information about the design process and results.

Furthermore, in order to give more advanced data reporting mechanism with the new method, users can redefine the generic functions: 

	\code{summary(object, ...)}, 
	\code{plot(x,y, ...)}, 
	\code{print(x, ...)} 

}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}
\examples{
# an example implementation of the method "MC" is held  in the file
# "inst/extdata/montecarloDesigner.R"

	rFile <- "montecarloDesigner.R"
	rFile <- paste(path.package("mtk", quiet = TRUE),
			"/extdata/",rFile,sep = "")

# to convert this special version of the method "MC" 
# to S4 classes compliant with the "mtk" package. The generated "mtk" compliant class
# is called "mtkXXXDesigner.R" where XXX corresponds to the name of the method.
	mtk.designerAddons(where=rFile, authors="H. Monod,INRA", name="MC",
		 main="basicMonteCarlo")

# to use the method "MC" with the package "mtk",
# just source the generated new files

	source("mtkMCDesigner.R")

## Use the "mtkMCDesigner" with the "mtk" package in a seamless way:

#	1) Define the factors
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
    	 distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
    	 distribPara=list(min=-pi, max=pi))
	ishi.factors <- mtkExpFactors(list(x1,x2,x3))
	
#	2) Specify a new workflow with the new method
	ishiReg <- mtkExperiment(expFactors=ishi.factors,design="MC",
			model="Ishigami", analyze="Regression",
		    designInfo=list(size=20))
		   
#	3) Run the workflow and report the results
	run(ishiReg)
	summary(ishiReg)

}
