\name{wwdm.climates}
\alias{WWDM.climates}
\alias{wwdm.climates}
\docType{data}
\title{Dataset used with the \code{\link{WWDM}} model}
\description{This dataset gives climatic data needed by the \code{\link{WWDM}} crop model model. 
\describe{
  \item{\code{ANNEE}}{\code{numeric}, year of weather data: from 1 to 14.} 
	\item{\code{RG}}{Global Radiation}
	\item{\code{Tmin}}{Minimal temperature}
  \item{\code{Tmax}}{Maximal temperature}
}
}
\seealso{\code{help(WWDM)}}
\keyword{dataset}
\references{
\enumerate{
 \item Makowski, D., Jeuffroy, M.-H., Gu\'{e}rif, M., 2004. Bayseian methods for updating crop model predictions, applications for predicting biomass and grain protein content. In: Bayseian Statistics and Quality Modelling in the Agro-Food Production Chain (van Boeakel et al. eds), pp. 57-68. Kluwer, Dordrecht.
 \item Monod, H., Naud, C., Makowski, D., 2006. Uncertainty and sensitivity  analysis for crop models. In: Working with Dynamic Crop Models (Wallach D., Makowski D. and Jones J. eds), pp. 55-100. Elsevier, Amsterdam.
}
}
\examples{
  data(wwdm.climates)
  summary(wwdm.climates)
  wwdm.climates[1:20,]
  par(mfrow=c(3,1)) ; 
  		for(i in 1:3) ts.plot(wwdm.climates[ wwdm.climates[,1]==1,1+i],
  		ylab=names(wwdm.climates[1+i])
  	)
}