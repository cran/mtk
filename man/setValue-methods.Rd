\name{setValue-methods}
\alias{setValue-methods}
\alias{setValue}
\title{The \code{setValue} method}
\description{Gives a new value to the underlying object}
\usage{setValue(this, val)}
\value{invisble()}
\arguments{
\item{this}{the underlying object of the corresponding class.}
\item{val}{a new value.}
}

\section{Details}{
Used by many classes. The behavior depends on the underlying class.
}

\author{Juhui WANG, MIA-Jouy, Inra, Juhui.Wang@jouy.inra.fr }

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create a  new object of mtkValue
	d <- mtkValue("a", "double", 0)
	getValue(d) # gives 0.0

	setValue(d, 3.14)
	getValue(d) # gives 3.14

}
