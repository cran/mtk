\name{WWDM.factors}
\alias{WWDM.factors}
\docType{data}
\title{The input factors of the \code{\link{WWDM}} model}
\description{This dataset gives the input factors and their uncertainty domains involved in the \code{\link{WWDM}} model.
\describe{
  \item{\code{Eb}}{Radiation use efficiency} 
	\item{\code{Eimax}}{Maximal ratio of intercepted to incident radiation}
	\item{\code{K}}{Coefficient of extinction}
	\item{\code{Lmax}}{Maximal value of the Leaf Area Index (LAI)}
	\item{\code{A}}{Coefficient of LAI increase}
	\item{\code{B}}{Coefficient of LAI decrease}
	\item{\code{TI}}{Temperature threshold}
}
}
\usage{data(WWDM.factors)}
\format{an object of the calss \code{\linkS4class{mtkExpFactors}}.}
\seealso{\code{help(WWDM)}}
\keyword{dataset}
\references{
\enumerate{
 \item Makowski, D., Jeuffroy, M.-H., Gu\'{e}rif, M., 2004. Bayseian methods for updating crop model predictions, applications for predicting biomass and grain protein content. In: Bayseian Statistics and Quality Modelling in the Agro-Food Production Chain (van Boeakel et al. eds), pp. 57-68. Kluwer, Dordrecht.
 \item Monod, H., Naud, C., Makowski, D., 2006. Uncertainty and sensitivity  analysis for crop models. In: Working with Dynamic Crop Models (Wallach D., Makowski D. and Jones J. eds), pp. 55-100. Elsevier, Amsterdam.
}
}
\examples{
# The code used to generate the WWDM.factors is as follows:
	Eb <- make.mtkFactor(name="Eb", distribName="unif", 
		nominal=1.85, distribPara=list(min=0.9, max=2.8), unit="g/MJ")
	Eimax <- make.mtkFactor(name="Eimax", distribName="unif", 
		nominal=0.94, distribPara=list(min=0.9, max=0.99))
	K <- make.mtkFactor(name="K", distribName="unif", 
		nominal=0.7, distribPara=list(min=0.6, max=0.8))
	Lmax <- make.mtkFactor(name="Lmax", distribName="unif", 
		nominal=7.5, distribPara=list(min=3, max=12), unit="m\u00b2/m\u00b2")
	A <- make.mtkFactor(name="A", distribName="unif", 
		nominal=0.0065, distribPara=list(min=0.0035, max=0.01))
	B <- make.mtkFactor(name="B", distribName="unif", 
		nominal=0.00205, distribPara=list(min=0.0011, max=0.0025))
	TI <- make.mtkFactor(name="TI", distribName="unif", 
		nominal=900, distribPara=list(min=700, max=1100),unit="\u00b0C")

	WWDM.factors <- mtkExpFactors(list(Eb,Eimax,K,Lmax,A,B,TI))

# To import the WWDM.factors, just use the following line
	data(WWDM.factors)
}