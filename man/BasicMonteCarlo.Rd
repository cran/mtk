\name{BasicMonteCarlo}
\alias{BasicMonteCarlo}
\title{The \code{BasicMonteCarlo} design method}
\description{A native \code{mtk} design method to generate Monte Carlo samples.}


\section{Usage}{
\itemize{
\item mtkBasicMonteCarloDesigner(listParameters=NULL)
\item mtkNativeDesigner(design="BasicMonteCarlo", information=NULL)
}
}
\section{Parameters}{
\describe{
\item{size :}{the sample size.}
}}

\section{Details}{
\enumerate{
  \item The \code{mtk} implementation of the \code{Basic Monte-Carlo} method includes the following classes:
  \itemize{
  \item \code{\linkS4class{mtkBasicMonteCarloDesigner}} for Basic Monte-Carlo design processes.
  \item \code{\linkS4class{mtkBasicMonteCarloDesignerResult}} to store and manage the design.
   }
    
  \item Many ways to create a \code{Basic Monte-Carlo} designer are available in \code{mtk}, but we recommend the following class constructors: 
  \code{\link{mtkBasicMonteCarloDesigner}} or \code{\link{mtkNativeDesigner}}.
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

\examples{

## Experiments design with the "Basic Monte-Carlo" method for the "Ishigami" model

#	Example I: by using the class constructors: mtkBasicMonteCarloDesigner()

# 	1) Create a designer process based on the Basic Monte-Carlo method 
		MCdesign <- mtkBasicMonteCarloDesigner(listParameters = list(size=20))

# 	2) Import the input factors of the "Ishigami" model
		data(Ishigami.factors)

# 	3) Build and run the  workflow 
		exp1 <- mtkExpWorkflow(expFactors = Ishigami.factors,
	               processesVector = c(design=MCdesign)) 
		run(exp1)

# 	4) Report and plot the design
    		show(exp1)
    		plot(exp1)	
	
#	Example II: by using the class constructors: mtkNativeDesigner()

# 	1) Create a designer process based on the Basic Monte-Carlo method 
		MCdesign <- mtkNativeDesigner("BasicMonteCarlo", information = list(size=20))

# 	2) Import the input factors of the "Ishigami" model
		data(Ishigami.factors)

# 	3) Build and run the  workflow 
		exp1 <- mtkExpWorkflow(expFactors = Ishigami.factors,
	               processesVector = c(design=MCdesign)) 
		run(exp1)

# 	4) Print and plot the design
		print(exp1)
		plot(exp1)	
}

