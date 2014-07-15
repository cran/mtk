\name{Morris}
\docType{data}
\alias{Morris}
\title{The \code{Morris} method}
\description{A \code{mtk} compliant implementation of the  \code{morris} method for experiments design and sensitivity analysis.}

\section{Usage}{
\itemize{
\item mtkMorrisDesigner(listParameters = NULL)
\item mtkNativeDesigner(design="Morris", information=NULL)
\item mtkMorrisAnalyser(listParameters = NULL)
\item mtkNativeAnalyser(analyze="Morris", information=NULL)
}
}

\section{Parameters}{
\describe{
\item{\code{r}:}{the number of trajectories or a pair \code{(r1,r2)} if the version due to Campolongo et al. (2007) is used.}
\item{\code{type}:}{the type of design (either \code{oat} or \code{simplex}).}
\item{\code{levels}:}{the number of levels per factor (if \code{type = "oat"}).}
\item{\code{grid.jump}:}{the length of the steps within the trajectories (if \code{type = "oat"}).}
\item{\code{scale.factor}:}{a numeric value, the homothety factor of the (isometric) simplexes (if \code{type = "simplex"}).}
\item{\code{scale}:}{logical. If TRUE, the input design of experiments is scaled before computing the elementary effects so that all factors vary within the range [0,1].}
%\item{\code{identify}:}{see the help on function morris in the sensitivity library: \code{help(morris, sensitivity)}.}
\item{\code{shrink}:}{a scalar or a vector of scalars between 0 and 1, specifying shrinkage to be used on the probabilities before calculating the quantiles.}
}}

\section{Details}{
\enumerate{
  \item The \code{mtk} implementation uses the \code{morris} function of the \code{sensitivity} package. For further details on the arguments and the behavior, see \code{help(morris, sensitivity)}.

  \item The \code{mtk} implementation of the \code{Morris} method includes the following classes:
  \describe{
    \item{\code{\linkS4class{mtkMorrisDesigner}}:}{for the \code{Morris} design processes.}
    \item{\code{\linkS4class{mtkMorrisAnalyser}}:}{for \code{Morris} analysis processes.}
    \item{\code{\linkS4class{mtkMorrisDesignerResult}}:}{to store and manage the design.}
    \item{\code{\linkS4class{mtkMorrisAnalyserResult}}:}{to store and manage the analysis results.}
    }
    
  \item Many ways to create a \code{Morris} designer are available in \code{mtk}, but we recommend the following class constructors: 
  \code{\link{mtkMorrisDesigner}} or \code{\link{mtkNativeDesigner}}.
  
  \item Many ways to create a \code{Morris} analyser are available in \code{mtk}, but we recommend the following class constructors: 
  \code{\link{mtkMorrisAnalyser}} or \code{\link{mtkNativeAnalyser}}.
  
  \item The method \code{Morris} is usually used both to build the experiment design and to carry out the sensitivity analysis. In such case,
   we can use the \code{\linkS4class{mtkDefaultAnalyser}} instead of naming explicitly the method for sensitivity analysis (see example III in the examples section)
 } 
}
\references{
\enumerate{
\item Campolongo, F., J. Cariboni, and A. Saltelli, 2007. An effective screening design for sensitivity analysis of large models.
 Environmental Modelling and Software, 22, 1509–1518.
\item Saltelli A., Chan  K.and Scott E. M., 2000. Sensitivity Analysis. Wiley, New York
\item Pujol G., 2009, Simplex-based screening designs for estimating metamodels, Reliability Engineering and System Safety 94, 1156–1160.
}
}

\seealso{\code{help(morris, sensitivity)}}

\examples{

## Sensitivity analysis of the "Ishigami" model with the "Morris" method 

#	Example I: by using the class constructors: mtkMorrisDesigner() and mtkMorrisAnalyser()

#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkMorrisDesigner( 
					listParameters = list(r=20, type="oat",
					   				levels=4, grid.jump=2)
							) 

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process 
		exp1.analyser <- mtkMorrisAnalyser()

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	            processesVector = c(design=exp1.designer,	
	    				 		    evaluate=exp1.evaluator, 
	    						    analyze=exp1.analyser)
	    					    )

# 	Run the workflow and reports the results.
		run(exp1)
		print(exp1)
		plot(exp1)
#       plot3d.morris(extractData(exp1, name="analyze"))
    
## 	Example II:  by using the class constructors: mtkNativeDesigner() and mtkMorrisAnalyser()

#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkNativeDesigner(design = "Morris", 
	    	  information = list(r=20, type="oat",
	    	  				levels=4, grid.jump=2)
	    	  				 ) 

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process with the default method
		exp1.analyser <- mtkMorrisAnalyser()

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp1.designer, 
	    					evaluate=exp1.evaluator, 
	    					analyze=exp1.analyser)
	    				  )

# 	Run the workflow and reports the results.
		run(exp1)
		print(exp1)
		

## 	Example III:  by using the class constructors: mtkMorrisDesigner() and mtkDefaultAnalyser()

#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkMorrisDesigner( listParameters = 
						list(r=20, type="oat", 
						levels=4, grid.jump=2))  

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
}

