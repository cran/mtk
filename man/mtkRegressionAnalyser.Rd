\name{mtkRegressionAnalyser}
\alias{mtkRegressionAnalyser}
\title{The constructor of the class \code{mtkRegressionAnalyser}}


\description{The constructor}
\usage{ mtkRegressionAnalyser( 
	mtkParameters = NULL, 
	listParameters = NULL
	)
}
\value{an object of the \code{\linkS4class{mtkRegressionAnalyser}} class}

\arguments{
\item{mtkParameters}{a vector of [\code{\linkS4class{mtkParameter}}] representing the parameters necessary to run the process.}
\item{listParameters}{a named list  containing the parameters to pass while calling the process. This gives another way to specify the parameters.}
}

\seealso{\code{help(morris, sensitivity)} and \code{help(Regression)}}

\examples{

## Sensitivity analysis of the "Ishigami" model with the "Monte-Carlo" and "Regression" methods


#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp.designer <- mtkBasicMonteCarloDesigner (listParameters=list(size=20))

#   2) the simulation process
		exp.evaluator <- mtkIshigamiEvaluator() 

#   3) the analysis process 
		exp.analyser <- mtkRegressionAnalyser(listParameters=list(nboot=20) )

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp.designer,
		evaluate=exp.evaluator, analyze=exp.analyser))

# 	Run the workflow and report the results.
		run(exp1)
		print(exp1)
	
}

