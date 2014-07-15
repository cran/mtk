\name{mtkFastDesigner}
\alias{mtkFastDesigner}
\title{The constructor of the class \code{mtkFastDesigner}}


\description{The constructor}
\usage{mtkFastDesigner(mtkParameters = NULL, listParameters = NULL)
}
\value{an object of the \code{\linkS4class{mtkFastDesigner}} class}

\arguments{
\item{mtkParameters}{a vector of [\code{\linkS4class{mtkParameter}}] representing the parameters necessary to run the process.}
\item{listParameters}{a named list  containing the parameters to pass while calling the process. This gives another way to specify the parameters.}
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
