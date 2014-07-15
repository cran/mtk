\name{setParameters-methods}
\alias{setParameters-methods}
\alias{setParameters}
\title{The \code{setParameters} method}
\description{Assigns a vector of parameters to  the process.}
\usage{setParameters(this,f)}
\value{invisble()}
\arguments{
\item{this}{the underlying object of class \code{\linkS4class{mtkProcess}}}
\item{f}{a vector of  \code{\linkS4class{mtkParameter}}.}
}
\author{Juhui WANG, MIA-Jouy, Inra, Juhui.Wang@jouy.inra.fr }

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create a process for experiments design

	designer <- mtkNativeDesigner(design ="Morris")
	
# Create a list of mtkParameter for the parameters: min, max, shape.
	p <- make.mtkParameterList(list(size=20))

# Assign the parameters to the process

	setParameters(designer, p)
	
	
}

