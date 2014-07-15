\name{summary,mtkProcess-method}
\alias{summary,mtkProcess-method}
\alias{summary}
\title{The \code{summary} method}
\description{Returns a summary report of the results produced by the process.}
\usage{summary(object, \dots)}
\value{
The form of the value returned by \code{summary} depends on the sub-class where the method is implemented. 

By default, it prints the report on the display device.
}
\arguments{
\item{object}{the underlying object of class \code{\linkS4class{mtkProcess}}.}
\item{\dots}{see the help for the function: base::summary().}
}
\section{Details}{
\enumerate{
\item The behavior of the \code{print} depends on the sub-class where the method is implemented. 
\item See the documentation of the particular sub-class for details of what is produced.
\item Use \code{methods("summary")} to get all the methods for the \code{summary} generic.
}
}
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
## Run and report a summary of the results produced by the workflow
	run(ishiReg)
	summary(ishiReg)

}

