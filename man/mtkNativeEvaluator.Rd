\name{mtkNativeEvaluator}
\alias{mtkNativeEvaluator}
\title{The constructor of the class \code{mtkNativeEvaluator}}

\description{ The constructor.
}

\usage{mtkNativeEvaluator(model=NULL, Y=NULL, information=NULL)
}
\value{an object of the \code{\linkS4class{mtkNativeEvaluator}} class}
\arguments{
\item{model}{NULL, an R function or a string to specify the model to simulate.}
\item{Y}{NULL or a data.frame to load the results of model simulation produced off-line.}
\item{information}{a named list to provide with supplementary information about the simulation produced off-line or the parameters used by the evaluator.}
}
\section{Details}{
We can construct an object of the \code{\linkS4class{mtkNativeEvaluator}} class from the following situations: 
\itemize{
\item{The model is provided within the package "mtk"}{The argument "model" takes a string giving the model to simulate, and the argument 
"information" gives the list of parameters used for the model simulation. e.g. model <- mtkNativeEvaluator( model="Ishigami").}
\item{The model is provided with an R function implemented outside the package "mtk"}{The argument "model" takes the R function, the argument "information" may be used to give supplementary information about the R function.}
\item{The simulation results are produced off-line and available as a data.frame}{The argument "model" is not used, the argument "Y" takes the data.frame holding the model simulation, and the argument "information" may be omitted
 or simply used to give supplementary information about the simulation process. e.g. model <- mtkNativeDesigner( Y = simultedData, information = list(model = "Ishigami")).}
}

For details uses, see examples from \code{?class(mtkNativeEvaluator)}.
}

\seealso{\code{?class(mtkNativeEvaluator)}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
## 1) Create a model simulation  with the model "Ishigami" implemented in the package "mtk"
	evaluator <- mtkNativeEvaluator(model="Ishigami")
	
## 2) Create a model simulation  with a R function implemented outside the package "mtk"

#	a) Create a R function to represent the model of population

	ME <- function(K, Y0, a, t=5, ...){
	
	res <- exp(-a*t)
	res <- Y0+res*(K-Y0)
	res <- K*Y0/res
	out <- as.integer(res)
	
	return(out)	
	}
#	b) Do the sensitivity analysis for the function "ME"

	K <- make.mtkFactor(name="K", nominal=400, distribName="unif",
		distribPara=list(min=100, max=1000))
	Y0 <- make.mtkFactor(name="Y0", nominal=20, distribName="unif",
		distribPara=list(min=1, max=40))
	a <- make.mtkFactor(name="a", nominal=0.1, distribName="unif", 
		distribPara=list(min=0.05, max=0.2))
	factors <- mtkExpFactors(list(K,Y0,a))


	plan <- mtkNativeDesigner ("BasicMonteCarlo", 
		information=c(size=500))

	model <- mtkNativeEvaluator(model=ME, information=c(t=5))

	index<- mtkNativeAnalyser("Regression", information=c(nboot=20) )

	expt <- mtkExpWorkflow( expFactors=factors,
		processesVector=c(
				design= plan,
				evaluate= model,
				analyze= index)
		)
	run(expt)
	summary(expt)
	
##	3) Import the results of model simulation produced off-line into 
##	   an object of mtkNativeEvaluator

	data <- data.frame()
	model <- mtkNativeEvaluator(Y=data, 
		information = list(model="Ishigami"))
}

