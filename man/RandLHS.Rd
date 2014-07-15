\name{RandLHS}
\docType{data}
\alias{RandLHS}
\title{The \code{RandLHS} Method}
\description{A \code{mtk} compliant implementation of the  method for drawing Random Latin Hypercube Design.}
\section{Usage}{
\itemize{
\item mtkRandLHSDesigner(listParameters = NULL)
\item mtkNativeDesigner(design="RandLHS", information=NULL)
}
}
\section{Parameters used to manage the method}{
\describe{
\item{\code{size}:}{The number of partitions (simulations or design points).}
\item{\code{preserveDraw}:}{logical (default FALSE). Ensures that two subsequent draws with the same n, but one with k and one with m variables (k<m), will have the same first k columns if the seed is the same.}
}}



\section{Details}{
\enumerate{
  \item The \code{mtk} implementation uses the \code{randomLHS} function of the package \code{lhs}. For further details on the arguments and the behavior, see \code{help(randomLHS, lhs)}.

  \item The implementation of the \code{RandLHS} method includes the
 class \code{\linkS4class{mtkRandLHSDesigner}} to manage the sampling task and  the
class \code{\linkS4class{mtkRandLHSDesignerResult}} to manage the results produced by the sampling process.
}
}

\references{Stein, M. (1987) Large Sample Properties of Simulations Using Latin Hypercube Sampling. Technometrics. 29, 143–151.}

\seealso{\code{help(randomLHS, lhs)}}

\examples{
# uses the RandLHS method 
## Random Latin Hypercude draws for the "Ishigami" model 

#  Example I: by using the class constructors: mtkRandLHSDesigner()

#	Generate the factors
		data(Ishigami.factors)
		
# 	Build the processes and workflow:

#   1) the design process
		exp1.designer <- mtkRandLHSDesigner( listParameters = list(size=10) ) 
    
#   2) the workflow

  	exp1 <- mtkExpWorkflow(expFactors=Ishigami.factors,
	    processesVector = c(design=exp1.designer) )

# 	Run the workflow and reports the results.
    run(exp1)
    print(exp1)
    plot(exp1)
}

