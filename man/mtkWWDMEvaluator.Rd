\name{mtkWWDMEvaluator}
\alias{mtkWWDMEvaluator}
\title{The constructor of the class \code{mtkWWDMEvaluator}}


\description{The constructor}
\usage{mtkWWDMEvaluator(mtkParameters = NULL, listParameters = NULL)
}
\value{an object of the \code{\linkS4class{mtkWWDMEvaluator}} class}

\arguments{
\item{mtkParameters}{a vector of [\code{\linkS4class{mtkParameter}}] representing the parameters necessary to run the process.}
\item{listParameters}{a named list  containing the parameters to pass while calling the process. This gives another way to specify the parameters.}
}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{
\enumerate{
\item J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.
 \item R. Faivre, D. Makowski, J. Wang, H. Richard, R. Monod (2013). Exploration numérique d'un modèle agronomique avec le package \code{mtk}.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles. 
 }
 }
\seealso{\code{help(WWDM)}}

\examples{

# Carry out a sensitivity analysis with the WWDM model

##	Input the factors
	data(WWDM.factors)

##	Specify the experiments designer
	designer <- mtkMorrisDesigner (
		listParameters = list(type="oat", levels=5, grid.jump=3, r=10)
		)

##	Specify the model simulator
	model <- mtkWWDMEvaluator(
		listParameters = list(year=3, tout=FALSE)
		)
	
##	Specify the sensiticity analyser
	analyser <- mtkMorrisAnalyser()

##	Specify the workflow
	exp <- new("mtkExpWorkflow", expFactors=WWDM.factors,
		   processesVector=c(
				              design=designer,
				              evaluate=model,
				              analyze=analyser)
			  				)
## Run and report the results
	run(exp)
	summary(exp)

}

