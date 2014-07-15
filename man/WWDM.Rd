\name{WWDM}
\docType{data}
\alias{WWDM}
\title{The \code{WWDM} model}
\description{The \code{WWDM} (Winter Wheat Dry Matter Model) is a very simple dynamic crop model with a daily time step.
 It has been developed at INRA (France) by David Makowski, Marie-Hélène Jeuffroy and Martine Guérif.

The behavior of the model is influenced by seven factors:
\describe{
\item{\code{Eb: }}{Radiation use efficiency}
\item{\code{Eimax: }}{Maximal ratio of intercepted to incident radiation}
\item{\code{K: }}{Coefficient of extinction}
\item{\code{Lmax: }}{Maximal value of the Leaf Area Index (LAI)}
\item{\code{A: }}{Coefficient of LAI increase}
\item{\code{B: }}{Coefficient of LAI decrease}
\item{\code{TI: }}{Temperature threshold}
}
}
\section{Usage}{
\itemize{
\item mtkWWDMEvaluator(listParameters=NULL) 
\item mtkNativeEvaluator(model="WWDM",information=NULL)
\item mtkEvaluator(protocol = "R", site = "mtk", service = "WWDM", parametersList=NULL)
}
}
\section{Parameters used to manage the simulation}{
\describe{
\item{\code{year}}{Either NULL or a number between 1 and 14 to specify the number of years to simulate. A database with 14 yearly sequences of meteorological data are included in the environment (data frame \code{wwdm.climates}).}
}
}

\details{
 \enumerate{
\item The implementation of the \code{WWDM} model includes the object \code{\link{WWDM.factors}}  on the input factors, the class \code{\linkS4class{mtkWWDMEvaluator}} to run the simulations,
and the data frame \code{wwdm.climates} containing the climate data.
\item In \code{mtk}, there are a few ways to build an evaluator of the \code{WWDM} model, but we usually recommend the following class constructors: \code{\link{mtkWWDMEvaluator}} , \code{\link{mtkNativeEvaluator}}.
}
}
\seealso{\code{help(WWDM.factors)}}
\references{
\enumerate{
 \item Makowski, D., Jeuffroy, M.-H., Guérif, M., 2004. Bayseian methods for updating crop model predictions, applications for predicting biomass and grain protein content. In: Bayseian Statistics and Quality Modelling in the Agro-Food Production Chain (van Boeakel et al. eds), pp. 57-68. Kluwer, Dordrecht.
 \item Monod, H., Naud, C., Makowski, D., 2006. Uncertainty and sensitivity  analysis for crop models. In: Working with Dynamic Crop Models (Wallach D., Makowski D. and Jones J. eds), pp. 55-100. Elsevier, Amsterdam.
}
}
\examples{
## Evaluation of the "WWDM" model

#	Example I: by using the class constructors: mtkWWDMEvaluator()

#	Generate the factors
		data(WWDM.factors)
		
# Build the workflow:
#   1) specify the design process
	designer <- mtkNativeDesigner("BasicMonteCarlo", information = list(size=50)  )

#   2) specify the evaluation process; 
	model <- mtkWWDMEvaluator(listParameters = list(year=3) )
  
#   3) specify the workflow with the processes defined previously

	exp <- mtkExpWorkflow( expFactors=WWDM.factors,
		    processesVector=c( design=designer, evaluate=model) )
# Run the workflow and report the results.
  run(exp)
  summary(exp)
  
# Personnalize the data reporting

  designData <-  extractData(exp,name="design")
  
  simulationData <- extractData(exp,name="evaluate")

  plot(designData$Eb, simulationData$Biomass, xlab="Eb",ylab="Biomass")
	
## Example II: by using the class constructor: mtkNativeEvaluator()

# Generate the input factors
	data(WWDM.factors)

# Build the workflow:
#   1) specify the design process
	designer <- mtkNativeDesigner("BasicMonteCarlo", information = list(size=20)  )

#   2) specify the evaluation process; 
	model <- mtkNativeEvaluator(model="WWDM", information=list(year=3)  )
  
#   3) specify the workflow with the processes defined previously

	exp <- mtkExpWorkflow(expFactors=WWDM.factors,
		    processesVector=c( design=designer, evaluate=model) )
        
# Run the workflow and report the results.
  run(exp)
  summary(exp)
  plot(exp)

}