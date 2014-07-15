\name{mtkMorrisAnalyser}
\alias{mtkMorrisAnalyser}
\title{The constructor of the class \code{mtkMorrisAnalyser}}


\description{The constructor}
\usage{mtkMorrisAnalyser(mtkParameters = NULL, listParameters = NULL)
}
\value{an object of the \code{\linkS4class{mtkMorrisAnalyser}} class}

\arguments{
\item{mtkParameters}{a vector of [\code{\linkS4class{mtkParameter}}] holding the parameters necessary to run the process.}
\item{listParameters}{a named list  containing the parameters to pass while calling the process. This gives another way to specify the parameters.}
}
\references{
\enumerate{
\item Campolongo, F., J. Cariboni, and A. Saltelli (2007). An effective screening design for sensitivity analysis of large models.
 Environmental Modelling and Software, 22, 1509–1518.
\item A. Saltelli, K. Chan and E. M. Scott (2000). Sensitivity Analysis. Wiley, New York
}
}

\seealso{\code{help(morris, sensitivity)} and \code{help(Morris)}}

\examples{

## Sensitivity analysis of the "Ishigami" model with the "Morris" method 


#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkMorrisDesigner( listParameters
	    	= list(r=20, type="oat", levels=4, grid.jump=2)) 

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process 
		exp1.analyser <- mtkMorrisAnalyser()

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp1.designer,
		evaluate=exp1.evaluator, analyze=exp1.analyser))

# 	Run the workflow and report the results.
		run(exp1)
		print(exp1)
		
}
