\name{mtkFastAnalyser}
\alias{mtkFastAnalyser}
\title{The constructor of the class \code{mtkFastAnalyser}}


\description{The constructor}
\usage{mtkFastAnalyser(mtkParameters = NULL, listParameters = NULL)
}
\value{an object of the \code{\linkS4class{mtkFastAnalyser}} class}

\arguments{
\item{mtkParameters}{a vector of [\code{\linkS4class{mtkParameter}}] representing the parameters necessary to run the process.}
\item{listParameters}{a named list  containing the parameters to pass while calling the process. This gives another way to specify the parameters.}
}

\references{
\enumerate{
\item A. Saltelli, K. Chan and E. M. Scott (2000). Sensitivity Analysis. Wiley, New York.
\item J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.
}
}

\seealso{\code{help(fast, sensitivity)}}

\examples{

##			 Sensitivity analysis of the "Ishigami" model with the "Fast" method 

#	Input the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkFastDesigner(listParameters
	    	= list(n=1000)) 

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process 
		exp1.analyser <- mtkFastAnalyser()

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp1.designer,
		evaluate=exp1.evaluator, analyze=exp1.analyser))

# 	Run the workflow and reports the results.
		run(exp1)
		print(exp1)

}
