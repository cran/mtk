\name{mtkSobolAnalyser}
\alias{mtkSobolAnalyser}
\title{The constructor of the class \code{mtkSobolAnalyser}}


\description{The constructor}
\usage{mtkSobolAnalyser(mtkParameters = NULL, listParameters = NULL)
}
\value{an object of the \code{\linkS4class{mtkSobolAnalyser}} class}

\arguments{
\item{mtkParameters}{a vector of [\code{\linkS4class{mtkParameter}}] representing the parameters necessary to run the process.}
\item{listParameters}{a named list  containing the parameters to pass while calling the process. This gives another way to specify the parameters.}
}

\references{
\enumerate{
\item Campolongo, F., J. Cariboni, and A. Saltelli (2007). An effective screening design for sensitivity analysis of large models.
 Environmental Modelling and Software, 22, 1509–1518.
\item A. Saltelli, K. Chan and E. M. Scott (2000). Sensitivity Analysis. Wiley, New York
}
}

\seealso{\code{help(sobol2002, sensitivity)} and \code{help(Sobol)}}

\examples{

## Sensitivity analysis of the "Ishigami" model with the "Sobol" method 
}
