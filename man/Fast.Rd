\name{Fast}
\docType{data}
\alias{Fast}
\title{The extended Fourier Amplitude Sensitivity Test  for sensitivity analysis}
\description{A \code{mtk} compliant implementation of the so-called \code{extended-FAST} or \code{e-Fast} method  for experiments design and sensitivity analysis.}

\section{Usage}{
\itemize{
\item mtkFastDesigner(listParameters = NULL)
\item mtkNativeDesigner(design="Fast", information=NULL)
\item mtkFastAnalyser()
\item mtkNativeAnalyser(analyze="Fast", information=NULL)
}
}

\section{Parameters used to manage the sampling method}{
\describe{
\item{\code{n}:}{(\code{\link{numeric}})  the number of iteration.}
}
}
\section{Parameters used to manage the analysis method}{
No parameter is necessary.
}

\section{Details}{
\enumerate{
  \item The \code{mtk} implementation uses the \code{fast99} function of the \code{sensitivity} package. For further details on the arguments and the behaviour, see \code{help(fast99, sensitivity)}.

  \item The \code{mtk} implementation of the \code{Fast} method includes the following classes:
  \describe{
    \item{\code{\linkS4class{mtkFastDesigner}}:}{for \code{Fast} design processes.}
     \item{\code{\linkS4class{mtkFastAnalyser}}:}{for \code{Fast} analysis processes.}
    \item{\code{\linkS4class{mtkFastDesignerResult}}:}{to store and manage the design.}
    \item{\code{\linkS4class{mtkFastAnalyserResult}}:}{to store and manage the analysis results.}
    
    }
    
  \item Many ways to create a \code{Fast} designer are available in \code{mtk}, but we recommend the following class constructors: 
  \code{\link{mtkFastDesigner}} or \code{\link{mtkNativeDesigner}}.
  
   \item Many ways to create a \code{Fast} analyser are available in \code{mtk}, but we recommend the following class constructors: 
  \code{\link{mtkFastAnalyser}} or \code{\link{mtkNativeAnalyser}}.
  
  \item The method \code{Fast} is usually used both to build the experiment design and to carry out the sensitivity analysis. In such case,
   we can use the \code{\linkS4class{mtkDefaultAnalyser}} instead of naming explicitly the method for sensitivity analysis (see example III in the examples section)
 
  } 
}
\references{
\enumerate{
\item A. Saltelli, K. Chan and E. M. Scott (2000). Sensitivity Analysis. Wiley, New York.
\item J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.
}
}

\seealso{\code{help(fast99, sensitivity)}}

\examples{

## Sensitivity analysis of the "Ishigami" model with the "Fast" method 

#	Example I: by using the class constructors: mtkFastDesigner() and mtkFastAnalyser()

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
    plot(exp1)
		
## 	Example II:  by using the class constructors: mtkNativeDesigner() and mtkFastAnalyser()

#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkNativeDesigner(design = "Fast",information=list(n=1000)) 

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process with the default method
		exp1.analyser <- mtkFastAnalyser()

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp1.designer,
		evaluate=exp1.evaluator, analyze=exp1.analyser))

# 	Run the workflow and reports the results.
		run(exp1)
		plot(exp1)
		

## 	Example III:  by using the class constructors: mtkFastDesigner() and mtkDefaultAnalyser()

#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkFastDesigner( listParameters = list(n=2000))  

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process with the default method
		exp1.analyser <- mtkDefaultAnalyser()

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp1.designer,
		evaluate=exp1.evaluator, analyze=exp1.analyser))

# 	Run the workflow and reports the results.
		run(exp1)
		plot(exp1)
}


