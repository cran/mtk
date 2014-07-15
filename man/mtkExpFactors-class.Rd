\name{mtkExpFactors-class}
\docType{class}
\alias{mtkExpFactors-class}

\alias{[,mtkExpFactors-method}
\alias{[[,mtkExpFactors-method}
\alias{$,mtkExpFactors-method}

\alias{initialize,mtkExpFactors-method}
\alias{setFactors,mtkExpFactors,list-method}
\alias{getFactors,mtkExpFactors-method}
\alias{getNames,mtkExpFactors-method}
\alias{getDistributionNames,mtkExpFactors-method}
\alias{getDistributionParameters,mtkExpFactors-method}

\alias{getFactorNames,mtkExpFactors-method}
\alias{getFactorFeatures,mtkExpFactors-method}
\alias{getDistributionNominalValues,mtkExpFactors-method}
\alias{getDistributionNominalValueTypes,mtkExpFactors-method}
\alias{print,mtkExpFactors-method}
\alias{show,mtkExpFactors-method}


\title{The \code{mtkExpFactors} class}

\description{
The \code{mtkExpFactors} class is a class used to manage the factors involved in a sensitivity analysis.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkExpFactors]{mtkExpFactors}}}{signature(expFactorsList=list())}
}}

\section{Slots}{
\describe{
\item{\code{expFactorsList}:}{(\code{\link{list}}) a list of \code{\linkS4class{mtkFactor}} objects.}
}}

\section{Methods}{
\describe{
\item{initialize}{signature(.Object="mtkExpFactors") : The initializer.}
\item{setFactors}{signature(this="mtkExpFactors",aFactList="list"): Assigns a new list of \code{mtkFactor} objects.}
\item{getFactors}{signature(this="mtkExpFactors"): Returns the factors as a list of \code{mtkFactor} objects.}
\item{getNames}{signature(this = "mtkExpFactors"): Returns the names of the managed factors.}
\item{getFactorNames}{signature(this = "mtkExpFactors"): Returns the names of the managed factors as the method \code{getNames}.}
\item{getDistributionNames}{signature(this="mtkExpFactors"): Gets a list of mtkExpFactors names.}
\item{getDistributionParameters}{signature(this="mtkExpFactors"): Gets the parameters.}
\item{getFeatures}{signature(this = "mtkExpFactors"): Returns the features associated with the managed factors.}
\item{getDistributionNominalValues}{signature(this = "mtkExpFactors"): Returns the nominal values associated with the distributions of the managed factors.}
\item{getDistributionNominalValueTypes}{signature(this = "mtkExpFactors"): Returns the data type of the nominal value associated with the managed factors.}

\item{[[}{signature( x = "mtkExpFactors", i="ANY" ): Extracts or replaces parts of an object of the class \code{mtkExpFactors}.}
\item{[}{signature( x = "mtkExpFactors", i="ANY" ): Extracts or replaces parts of an object of class \code{mtkExpFactors}. }
\item{$}{signature(x = "mtkExpFactors"): Extracts or replaces parts of an object of the class. }
\item{\code{\link[=print]{print}}}{signature(x = "mtkExpFactors"): Prints information about the managed factors.}
\item{\code{\link[=show]{show}}}{signature(object = "mtkExpFactors"): Displays the underlying object of the class \code{\linkS4class{mtkExpFactors}}.}

}}
\author{Hervé Richard, BioSP, Inra,  Herve.Richard@avignon.inra.fr, Hervé Monod and Juhui WANG, MIA-jouy, INRA}
\examples{

# Define the factor
	x1 <- make.mtkFactor(name="x1", distribName="unif",
		 distribPara=list(min=-pi, max=pi))
	x2 <- make.mtkFactor(name="x2", distribName="unif",
   	 	 distribPara=list(min=-pi, max=pi))
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
   	  	distribPara=list(min=-pi, max=pi))

# Build an object of the "mtkExpFactors" class
	ishi.factors <- mtkExpFactors(list(x1,x2,x3))
}

