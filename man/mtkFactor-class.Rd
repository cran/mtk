\name{mtkFactor-class}
\docType{class}
\alias{mtkFactor-class}
\alias{initialize,mtkFactor-method}
\alias{setFeatures,mtkFactor,list-method}
\alias{getFeatures,mtkFactor-method}
\alias{getMTKFeatures,mtkFactor-method}
\alias{getName,mtkFactor-method}
\alias{setName,mtkFactor,character-method}
\alias{getType,mtkFactor-method}
\alias{setType,mtkFactor,character-method}
\alias{getDomain,mtkFactor-method}
\alias{setDomain,mtkFactor,mtkDomain-method}
\alias{getDistributionName,mtkFactor-method}
\alias{getDistributionNominalValue,mtkFactor-method}
\alias{getDistributionNominalValueType,mtkFactor-method}
\alias{getDistributionParameters,mtkFactor-method}
\alias{getDiscreteDistributionType,mtkFactor-method}
\alias{getDiscreteDistributionLevels,mtkFactor-method}
\alias{getDiscreteDistributionWeights,mtkFactor-method}
\alias{print,mtkFactor-method}
\alias{show,mtkFactor-method}


\title{The \code{mtkFactor} class}

\description{
The class used to manage an input factor and its uncertainty distribution.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkFactor]{mtkFactor}}}{signature(name="unkown", id="unkown", unit="", type="numeric", domain=mtkDomain(), featureList=list())}
}}

\section{Slots}{
\describe{
\item{\code{name}:}{the name of the input factor.}
\item{\code{id}:}{the name of the factor in the simulation code, if different
          from \code{name}.}
\item{\code{unit}:}{the measurement units of the factor values. This
          can be used in graphics or reports, for example.}
\item{\code{type}:}{the data type of the factor's values.}
\item{\code{domain}:}{the \code{\link{mtkDomain}} object that describes
  the factor's uncertainty.}
\item{\code{featureList}:}{the list of features that may be associated with the factor.}
}}

\section{Methods}{
\describe{
\item{\code{\link[=initialize-methods]{initialize}}}{signature(.Object = "mtkFactor"): The initializer  of  the class \code{\linkS4class{mtkFactor}}.}
\item{\code{\link[=getName-methods]{getName}}}{signature(this="mtkFactor"): Fetches the name of the factor.}
\item{\code{\link[=getType-methods]{getType}}}{signature(this = "mtkFactor"): Returns the data type of the factor's levels.}
\item{\code{\link[=getDomain-methods]{getDomain}}}{signature(this="mtkFactor"): Fetches the domain associated with the factor. It returns an object of the class \code{\linkS4class{mtkDomain}}.}
\item{\code{\link[=getDistributionName-methods]{getDistributionName}}}{signature(this="mtkFactor"): Fetches the name of the distribution associated with the uncertainty domain.}
\item{\code{\link[=getDistributionNominalValue-methods]{getDistributionNominalValue}}}{signature(this="mtkFactor"): Fetches the nominal value of the distribution associated with the uncertainty domain.}
\item{\code{\link[=getDistributionNominalValueType-methods]{getDistributionNominalValueType}}}{signature(this="mtkFactor"):  Fetches the data type associated with the uncertainty domain.}
\item{\code{\link[=getDiscreteDistributionType-methods]{getDiscreteDistributionType}}}{signature(this="mtkFactor"): Returns the discrete distribution type.}
\item{\code{\link[=getDiscreteDistributionLevels-methods]{getDiscreteDistributionLevels}}}{signature(this="mtkFactor"): Returns the levels managed by a discrete distribution.}
\item{\code{\link[=getDiscreteDistributionWeights-methods]{getDiscreteDistributionWeights}}}{signature(this="mtkFactor"): Returns the weights managed by a discrete distribution.}
\item{\code{\link[=getDistributionParameters-methods]{getDistributionParameters}}}{signature(this="mtkFactor"): The getDistributionParameters method.}
\item{\code{\link[=getFeatures-methods]{getFeatures}}}{signature(this="mtkFactor"): Returns the features as a named list.}
\item{\code{\link[=getMTKFeatures-methods]{getMTKFeatures}}}{signature(this="mtkFactor"): Returns the features as a vector of objects from the class \code{\linkS4class{mtkFeature}}.}
\item{\code{\link[=setName-methods]{setName}}}{signature(this = "mtkFactor", name = "character"): Gives a new name to the factor.}
\item{\code{\link[=setDomain-methods]{setDomain}}}{signature(this = "mtkFactor", domain = "mtkDomain"): Associates  a new domain with the factor.}
\item{\code{\link[=setType-methods]{setType}}}{signature(this = "mtkFactor", type = "character"): Names explicitly the data type managed by the factor.}
\item{\code{\link[=setFeatures-methods]{setFeatures}}}{signature(this="mtkFactor",aFList="list): Gives new features to the factor. \code{aFList} may be a vector of objects 
from the class \code{mtkFeature} or a named list from which we can build a list of features.}
\item{\code{\link[=print]{print}}}{signature(x = "mtkFactor"): Prints the data managed by the factor.}
\item{\code{\link[=show]{show}}}{signature(object = "mtkFactor"): Displays the underlying object of the class \code{\linkS4class{mtkFactor}}.}
}}
\author{Juhui WANG and  Hervé Monod, MIA-jouy, INRA, Hervé Richard, BioSP, INRA}
\examples{

# Manage a factor x1 with  a mtkFactor object.

	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi)) 
	getName(x1)
	getDomain(x1)
	getDistributionName(x1)
	getType(x1) 
	setType(x1, "double")
	getType(x1); # 'double'
}

