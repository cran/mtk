\name{PLMM}
\docType{data}
\alias{plmm}
\alias{PLMM}
\title{The \code{PLMM} method for sensitivity analysis}
\description{A \code{mtk} compliant implementation of the \code{PLMM} method for sensitivity analysis using polynomial linear metamodelling.}

\section{Usage}{
\itemize{
\item mtkPLMMAnalyser(listParameters = NULL)
\item mtkNativeAnalyser(analyze="PLMM", information=NULL)
}}

\section{Parameters}{
\describe{
\item{\code{degree.pol}:}{the maximum degree of polynomials (the sum of the degrees of cross products of polynomials is lower or equal to degree.pol). See details.}
\item{\code{rawX}:}{orthogonal polynomials (default value FALSE) or raw polynomials (TRUE). See \code{poly, polym}.}
\item{\code{numY}:}{the column number of the dependent variable (default is the first column of the dataframe of outputs).}
\item{\code{listeX}:}{the column numbers of the dependent variables (default is all the dependent variables).}
}}

\section{Parameters for auxiliary functions}{
\describe{
\item{\code{all}:}{all the specific summaries and plots are displayed if TRUE (default is FALSE). Else, see the \code{which} option.}
\item{\code{which}:}{when all=FALSE, the name of the specific summary or plot. Options are  "best"  (default), "full", "best.adjustedR2", "full.adjustedR2". See details.}
\item{\code{lang}:}{language of the summary and plot ("en" (default) for english,  "fr" for french).}
\item{\code{digits}:}{number of digits in the summary (default = options()$digits).}
\item{\code{colors}:}{colors used in plot (default = c("red", "orange","blue")).}
\item{\code{legend.loc}:}{location of the legend in plot (default no legend( NULL), options are "topleft", "topright", ... See \code{help(legend)}).}
}}

\section{Details}{
\enumerate{
  \item The \code{PLMM} metamodelling approach consists in estimating 3 models and comparing the percentage of variance (coefficient of determination) explained by these 3 models. The 3 models are \code{polym(A,B,C), poly(A), polym(B,C)} where \code{polym} computes orthogonal polynomials. \code{polym(A,B,C)} gives the total variance explained by the full metamodel, \code{poly(A)} gives the variance that can be explained by factor \code{A} only (in the sense of polynomials of \code{A}) and \code{polym(B,C)} gives the variance not explained by factor \code{A}. Total sensitiviy index of factor \code{A} is computed as \code{max( R2(poly(A)), 1 - R2(polym(A,B,C)) - R2(polym(B,C))}) where \code{R2(M)} is the coefficient of determination of model \code{M}, and first order sensitivity index as \code{min( R2(poly(A)), 1 - R2(polym(A,B,C)) - R2(polym(B,C))}). The \code{PLMM} function computes a best model in the sense of stepwise model selection starting with the constant model with direction fixed to \code{both} (see \code{stepAIC} for more details). Total sensitivity and first order indices are computed in the same. Additional results are givent when using adjusted \code{R2} for both best and full models. Names of the results (needed in \code{which} option) are: \code{best, full, best.adjustedR2, full.adjustedR2}.

\item Computational aspects: \code{PLMM} does not use the \code{polym} function (as \code{polym} needs time to orthogonalize when the number of factors and the degree of the polynomials are high). The cross products are computed as cross products of one dimensional orthogonal polynomials \code{ poly(A) * poly(B) * poly(C)}. So we have to take care with the selected components of the best model (obtained with a stepwise model selection).  Care should be taken for interpreting them because the dependent variables are orthogonalized. This not the case when the \code{rawX} option is set to \code{TRUE}. To prevent from computational side effects, the input factors are first scaled. 

\item The \code{mtk} implementation of the \code{PLMM} method includes the following classes:
  \itemize{
    \item \code{\linkS4class{mtkPLMMAnalyser}}: for PLMM analysis processes.
    \item \code{\linkS4class{mtkPLMMAnalyserResult}}: to store and manage the analysis results.
    }
    
    \item The \code{mtk} implementation of the \code{PLMM} method includes the following generic functions:
  \itemize{
    \item \code{summary:} to display summary of analysis results. See parameters for auxiliary functions.
    \item \code{plot:} to plot analysis results. See parameters for auxiliary functions.
    }
     
  \item Many ways to create a \code{PLMM} analyser are available in \code{mtk}, but we recommend the following class constructors: \code{\link{mtkPLMMAnalyser}} or \code{\link{mtkNativeAnalyser}}.
 }
 }


\references{
\enumerate{
\item Faivre R., 2013. Exploration par construction de métamodèles. In Faivre R., Iooss B., Mahévas S., Makowski D., Monod H., editors. Analyse de sensibilité et exploration de modèles. Applications aux modèles environnementaux. Collection « Savoir Faire », Quae, Versailles, 37p. 
 }}

\seealso{\code{help(polym, stepAIC)}}

\examples{

## Sensitivity analysis of the "Ishigami" model with the "PLMM" method 

#	Generates the factors
		data(Ishigami.factors)
		
# 	Builds the processes and workflow:

#   1) the experimental design process with the method "BasicMonteCarlo".
    exp1.designer  <- mtkNativeDesigner("BasicMonteCarlo", information=list(size=100))

#   2) the simulation process
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   3) the analysis process 
		exp1.analyser <- mtkNativeAnalyser("PLMM", information = list(degree.pol=3,numY=1))

#   4) the workflow

		exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
				 processesVector = c(design=exp1.designer,
		             				 evaluate=exp1.evaluator, 
		             				 analyze=exp1.analyser)
		             				 )

# 	Runs the workflow and reports the results.
		run(exp1)
		summary(exp1)
		summary(getProcess(exp1,name="analyze"), lang="fr")
		summary(getProcess(exp1,name="analyze"), lang="fr",
				 which="full", all=FALSE, digit=4)
		extractData(exp1,name="analyze")$best$call
		plot(getProcess(exp1,name="analysis"), lang="fr", legend.loc="topleft")
		plot(getProcess(exp1,name="analysis"), which="full",
			 all=FALSE, legend.loc="topright")
    
## 	Example II:  comparing metamodels of the WWDM model

#	Generates the factors
		data(WWDM.factors)
		
# 1) to create a sampler with the Monte-Carlo method

		sampler <- mtkNativeDesigner("BasicMonteCarlo", information = list(size=100) )

# 2) to create a simulator with the WWDM model 
		model <- mtkNativeEvaluator("WWDM" , information = list(year=3))

# 3) to create a partial workflow (design and evaluation)

		experience1 <- mtkExpWorkflow(expFactors=WWDM.factors, 
			processesVector=c(design=sampler, evaluate=model) )
		run(experience1)

# 4) to create an "analysor" with the Regression method 

		analyser1 <- mtkNativeAnalyser("Regression", information=list(nboot=20) )

# to add to the workflow the analyser "Regression"


		addProcess(experience1, p = analyser1, name = "analyze")
		run(experience1)

# 4bis) to create new analysers PLMM  and to add them to the workflow 

		experience2 <- experience1

		analyser2 <- mtkNativeAnalyser("PLMM")

		setProcess(experience2, p = analyser2, name = "analyze")
		run(experience2) ;

##	to comment out the following lines 	to compare others analysers 
## 	with 'analyser1' and 'analyser2'
#		experience4 <- experience3 <- experience2
#		analyser3 <- mtkNativeAnalyser("PLMM", information = list(degree.pol = 3))
#		analyser4 <- mtkNativeAnalyser("PLMM", 
#					information = list(degree.pol = 3, rawX = TRUE))
#		setProcess(experience3, p = analyser3, name = "analyze")
#		setProcess(experience4, p = analyser4, name = "analyze")	
#		run(experience3) ; run(experience4)

		summary(getProcess(experience1,name="analyze"))
  	    summary(getProcess(experience2,name="analyze"))
#		summary(getProcess(experience3,name="analyze"))
#		summary(getProcess(experience4,name="analyze"), digi=3)

}

