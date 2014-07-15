\name{Ishigami}
\docType{data}
\alias{Ishigami}
\title{The \code{Ishigami} model}
\description{The \code{Ishigami} model is an example evaluator implemented in the native \code{mtk}. It corresponds to the \code{Ishigami} function described in Saltelli et al., 2000. The behavior of the model is influenced by three factors \code{x1, x2, x3}.}
\section{Usage}{
\itemize{
\item mtkIshigamiEvaluator() 
\item mtkNativeEvaluator(model="Ishigami")
\item mtkEvaluator(protocol = "R", site = "mtk", service = "Ishigami")
}
}

\section{Details}{
\enumerate{
\item The implementation of the \code{Ishigami} model includes the object \code{\link{Ishigami.factors}}  on the input factors and the class \code{\linkS4class{mtkIshigamiEvaluator}} to run the simulations.
\item In \code{mtk}, there are a few ways to build an evaluator of the \code{Ishigami} model, but we usually recommend the following class constructors: \code{\link{mtkIshigamiEvaluator}} , \code{\link{mtkNativeEvaluator}}.
}
}

\references{
\enumerate{
\item T. Ishigami and  T. Homma (1990). An importance quantification technique in uncertainty analysis for computer models, 
\emph{In:} International Symposium on Uncertainity Modelling and Analysis (ISUMA'90) (1990).
\item A. Saltelli, K. Chan and E. M. Scott (2000). Sensitivity Analysis. Wiley, New York.
\item J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.
}
}
\seealso{\code{help(Ishigami.factors),help(ishigami.fun, sensitivity)}}

\examples{

### Run simulations of the "Ishigami" model
### for a random sample of input combinations

## Example I: by using the class constructor: mtkIshigamiEvaluator()

# 
# Input the factors used in the "Ishigami" model
	data(Ishigami.factors)

# Build the workflow:
#   1) specify the design process
	exp1.designer <- mtkNativeDesigner(design = "BasicMonteCarlo",
					 information = list(size=20) ) 

#   2) specify the evaluation process; 
	exp1.evaluator <- mtkIshigamiEvaluator() 

#   3) specify the workflow
	exp1 <- mtkExpWorkflow(expFactors = Ishigami.factors,
	               processesVector = c(design=exp1.designer,
	               evaluate=exp1.evaluator) )
# Run the workflow and report the results.
	run(exp1)
	print(exp1)
	
## Example II: by using the class constructor: mtkNativeEvaluator()

# Generate the Ishigami input factors
	data(Ishigami.factors)

# Build the workflow:
#   1) specify the design process
	exp1.designer <- mtkNativeDesigner(design = "BasicMonteCarlo", 
					information = list(size=20) ) 

#   2) specify the evaluation process; 
	exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) specify the workflow
	exp1 <- mtkExpWorkflow(expFactors = Ishigami.factors,
	               processesVector = c(design=exp1.designer, evaluate=exp1.evaluator) )
                 
# Run the workflow and report the results.
	run(exp1)
	print(exp1)
	
## Example III: by using the generic class constructor: mtkEvaluator()

# Generate the Ishigami input factors
	data(Ishigami.factors)

# Build the workflow:
#   1) specify the design process
	exp1.designer <- mtkNativeDesigner(
					design = "BasicMonteCarlo", information = list(size=20) ) 

#   2) specify the evaluation process; 
	exp1.evaluator <- mtkEvaluator(protocol = "R", site = "mtk", service = "Ishigami")

#   3) specify the workflow
	exp1 <- mtkExpWorkflow(expFactors = Ishigami.factors,
	               processesVector = c(design=exp1.designer, evaluate=exp1.evaluator) )
# Run the workflow and report the results.
	run(exp1)
	print(exp1)

}
