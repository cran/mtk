\name{Sobol}
\docType{data}
\alias{Sobol}
\title{The \code{Sobol} Method}
\description{A \code{mtk} compliant implementation of the  \code{Sobol}' method for design of experiments and sensitivity analysis.}

\section{Usage}{
\itemize{
\item mtkSobolDesigner(listParameters = NULL)
\item mtkNativeDesigner(design="Sobol", information=NULL)
\item mtkSobolAnalyser(listParameters = NULL)
\item mtkNativeAnalyser(analyze="Sobol", information=NULL)
}
}
\section{Parameters}{
\describe{
\item{\code{N}:}{the size of the basic samples; the final sample size will be N*(k+2) where k is the number of the factors to analyze.}

\item{\code{nboot}:}{the number of bootstrap replicates (default 0). See the help on function \code{sobol2002} in the package \code{sensitivity}.}
\item{\code{conf}:}{the confidence level for bootstrap confidence intervals (default 0.95). See the help on function \code{sobol2002} in the package \code{sensitivity}.}
\item{\code{sampling}:}{character string specifying the type of sampling method:   "MC" (default) for Monte Carlo sampling, "LHS" for Latin Hypercube sampling.} 
\item{\code{shrink}:}{a scalar or a vector of scalars between 0 and 1 (default 1), specifying shrinkage to be used on the probabilities before calculating the quantiles.} 
}
}

\section{Details}{
\enumerate{
  \item The \code{mtk} implementation uses the \code{sobol2002} function of the \code{sensitivity} package. For further details on the arguments and the behavior, see \code{help(sobol2002, sensitivity)}.

  \item The \code{mtk} implementation of the \code{Sobol}' method includes the following classes:
  \itemize{
    \item \code{\linkS4class{mtkSobolDesigner}}: for the \code{Sobol} design processes.
    \item \code{\linkS4class{mtkSobolAnalyser}}: for \code{Sobol} analysis processes.
    \item \code{\linkS4class{mtkSobolDesignerResult}}: to store and manage the design.
    \item \code{\linkS4class{mtkSobolAnalyserResult}}: to store and manage the analysis results.
    }
    
  \item Many ways to create a \code{Sobol} designer are available in \code{mtk}, but we recommend the following class constructors: 
  \code{\link{mtkSobolDesigner}} or \code{\link{mtkNativeDesigner}}.
  
  \item Many ways to create a \code{Sobol} analyser are available in \code{mtk}, but we recommend the following class constructors: 
  \code{\link{mtkSobolAnalyser}} or \code{\link{mtkNativeAnalyser}}.
  
  \item The \code{Sobol}' method is usually used both to build the experiment design and to carry out the sensitivity analysis. In such case,  we can use the \code{\linkS4class{mtkDefaultAnalyser}} instead of naming explicitly the method for sensitivity analysis (see example III in the examples section)
 } 
}
\references{ A. Saltelli, K. Chan and E. M. Scott (2000). Sensitivity Analysis. Wiley, New York
}

\seealso{\code{help(sobol2002, sensitivity)}, \code{Quantiles}}

\examples{

## Sensitivity analysis of the "Ishigami" model with the "Sobol" method 

#	Example I: by using the class constructors: mtkSobolDesigner() and mtkSobolAnalyser()

#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkSobolDesigner( listParameters = list(N=100)) 

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process 
  	exp1.analyser <- mtkSobolAnalyser()

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp1.designer, 
	    					evaluate=exp1.evaluator, 
	    					analyze=exp1.analyser))

# 	Run the workflow and reports the results.
		run(exp1)
		print(exp1)
		plot(exp1)
    
## 	Example II:  by using the class constructors: mtkNativeDesigner() and mtkSobolAnalyser()

#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkNativeDesigner(design = "Sobol", information = list(N=10)) 

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process with the default method
		exp1.analyser <- mtkSobolAnalyser()

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp1.designer, 
	    					evaluate=exp1.evaluator, 
	    					analyze=exp1.analyser))

# 	Run the workflow and reports the results.
		run(exp1)
		print(exp1)
    plot(exp1)
		

## 	Example III:  by using the class constructors: mtkSobolDesigner() and mtkDefaultAnalyser()

#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkSobolDesigner( listParameters = list(N=10))  

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process with the default method
		exp1.analyser <- mtkDefaultAnalyser()

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp1.designer, 
	    					evaluate=exp1.evaluator, 
	    					analyze=exp1.analyser))

# 	Run the workflow and reports the results.

    run(exp1)
    print(exp1)
    plot(exp1)
}


