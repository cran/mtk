\name{Regression}
\docType{data}
\alias{Regression}
\title{The \code{Regression} Method}
\description{A \code{mtk} compliant implementation of the  \code{src} method for computing the sensitivity index based on standardized (rank) regression coefficients.}

\section{Usage}{
\itemize{
\item mtkRegressionAnalyser(listParameters = NULL)
\item mtkNativeAnalyser(analyze="Regression", information=NULL)
}
}
\section{Parameters used to manage the method}{
\describe{
\item{\code{rank}:}{logical. If TRUE, the analysis is done on the ranks (default is \code{FALSE}). See the help on function \code{src} in the package \code{sensitivity}.}
\item{\code{nboot}:}{the number of bootstrap replicates (default 100). See the help on function \code{src} in the package \code{sensitivity}.}
\item{\code{conf}:}{the confidence level for bootstrap confidence intervals (default 0.95). See the help on function \code{src} in the package \code{sensitivity}.}

}}

\section{Details}{
\enumerate{
  \item The \code{mtk} implementation uses the \code{src} function of the package \code{sensitivity}. For further details on the arguments and the behavior, see \code{help(src, sensitivity)}.

  \item The implementation of the "Regression" method includes the class \code{\linkS4class{mtkRegressionAnalyser}} to manage the analysis task and  the
class \code{\linkS4class{mtkRegressionAnalyserResult}} to manage the results produced by the analysis process.
}
}

\references{A. Saltelli, K. Chan and E. M. Scott (2000). Sensitivity Analysis, Edition Wiley}

\seealso{\code{help(src, sensitivity)}}

\examples{
# Uses the method "Regression" to analyze the model "Ishigami":

#  Generate the factors
    data(Ishigami.factors)

# Builds experiment design with the Monte-Carlo method
	  designer <- mtkBasicMonteCarloDesigner( listParameters=list(size=20) )

# Builds a simulator for the model "Ishigami" with the defined factors
	  model <- mtkNativeEvaluator("Ishigami" )

# Builds an analyser with the method "Regression" implemented in the package "mtk"
	  analyser <- mtkNativeAnalyser("Regression", information=list(nboot=20) )

# Builds a workflow to manage the processes scheduling.
	  ishiReg <- mtkExpWorkflow( expFactors=Ishigami.factors,
		   processesVector=c(design=designer, evaluate=model, analyze=analyser) )

# Runs the workflow et reports the results
	  run(ishiReg)
	  summary(ishiReg)
    plot(ishiReg)
}

