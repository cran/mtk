\name{mtkDomain-class}
\docType{class}
\alias{mtkDomain-class}
\alias{initialize,mtkDomain-method}
\alias{getDistributionName,mtkDomain-method}
\alias{getNominalValueType,mtkDomain-method}
\alias{getNominalValue,mtkDomain-method}
\alias{getDiscreteDistributionType,mtkDomain-method}
\alias{setLevels,mtkDomain,list-method}
\alias{setLevels,mtkDomain,mtkLevels-method}
\alias{getLevels,mtkDomain-method}
\alias{getWeights,mtkDomain-method}
\alias{setDistributionParameters,mtkDomain,list-method}
\alias{getDistributionParameters,mtkDomain-method}
\alias{print,mtkDomain-method}
\alias{show,mtkDomain-method}

\title{The \code{mtkDomain} class}

\description{
The \code{mtkDomain} class is a class used to manage the uncertainty domain associated with a factor.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{mtkDomain}{signature(distributionName = "unknown", domainNominalValue = 0, distributionParameters = list())}
}}

\section{Slots}{
\describe{
\item{\code{distributionName}:}{(\code{\link{character}}) a string representing the  distribution law.}
\item{\code{nominalValue}:}{(\code{\link{mtkValue}}) the nominal value of the domain.}
\item{\code{levels}:}{(\code{\link{mtkLevels}}) an object of  \code{\linkS4class{mtkLevels}} class.}
\item{\code{distributionParameters}:}{(\code{\link{list}})  a list of \code{\linkS4class{mtkParameter}} objects.}
}}

\section{Methods}{
\describe{
\item{\code{initialize}}{signature(.Object = "mtkDomain"): The initializer  of  the class \code{mtkDomain}.}
\item{\code{\link[=getDistributionName-methods]{getDistributionName}}}{signature(this = "mtkDomain"): Returns the distribution's name.}
\item{\code{\link[=getNominalValue-methods]{getNominalValue}}}{signature(this = "mtkDomain"): Returns the the nominal value.}
\item{\code{\link[=getNominalValueType-methods]{getNominalValueType}}}{signature(this = "mtkDomain"): Returns the value type of the nominal value .}
\item{\code{\link[=getDiscreteDistributionType-methods]{getDiscreteDistributionType}}}{signature(this = "mtkDomain"): Returns the type of the discrete distribution.}
\item{\code{\link[=getLevels-methods]{getLevels}}}{signature(this="mtkDomain"): Fetches the the levels managed by the domain.}
\item{\code{\link[=getWeights-methods]{getWeights}}}{signature(this="mtkDomain"): Fetches the the weights managed by the domain.}
\item{\code{\link[=getDistributionParameters-methods]{getDistributionParameters}}}{signature(this = "mtkDomain"): Fetches the parameters of the distributions associated with the domain.}

\item{\code{\link[=setLevels-methods]{setLevels}}}{signature(this="mtkDomain", levels = "vector"): Affects a new level to the domain where \code{levels} is a named list like \code{list(type='categorical', levels=c(1,2,3,4,5), weights=c(0.2, 0.2, 0.2, 0.2, 0.2))}.}
\item{\code{\link[=setLevels-methods]{setLevels}}}{signature(this="mtkDomain", levels = "mtkLevels"): Affects a new level to the domain where \code{levels} is an object from the class \code{\linkS4class{mtkLevels}}.}

\item{\code{\link[=setDistributionParameters-methods]{setDistributionParameters}}}{signature(this = "mtkDomain", aDistParamList="list"): Affects a new list of parameters to the domain. For continue distributions, \code{aDistParamList}
may be a list of objects of the class \code{mtkParameter} or a named list like \code{list(max=5, min=1)}., For discrete distributions, \code{aDistParamList} may be a named list containing an object of the class \code{mtkLevels} or a named list like
\code{list(type='categorical',levels = c(1,2,3,4,5), weights=rep(0.2, 5))} from which we can build an object of the class \code{mtkLevels}. }
\item{\code{\link[=print]{print}}}{signature(x = "mtkDomain"): Prints the data managed by the domain.}
\item{\code{\link[=show]{show}}}{signature(object = "mtkDomain"): Displays the underlying object of the class \code{\linkS4class{mtkDomain}}.}

}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create a  new domain with a continue distribution
	d <- mtkDomain(distributionName="unif", domainNominalValue=0, 
		distributionParameters = list(max=3, min=0))
	
# Create a  new domain with a discrete distribution
	d <- mtkDomain(distributionName="discrete", domainNominalValue=3,
		 distributionParameters = list(type='categorical',
		 levels = c(1,2,3,4,5), weights=rep(0.2, 5)))
# Change the levels to list(type='categorical', levels = c('a','b','c','d'), weights=rep(0.25, 4))
	setLevels(d, list(type='categorical', levels = c('a','b','c','d'), weights=rep(0.25, 4)))
		
}

