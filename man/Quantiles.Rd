\name{Quantiles}
\alias{Quantiles}
\title{The \code{Quantiles} function}
\description{Calculates the quantiles of a univariate distribution.}
\usage{Quantiles(pvalues, distribName, distribParameters, shrink=0.95)}
\value{the q-values}
\arguments{
\item{pvalues}{a vector of probability values.}
\item{distribName}{a string giving the name of a probability distribution.}
\item{distribParameters}{a list of parameters of the distribution.}
\item{shrink}{a scalar eqn{<=1} to determine how to shrink the pvalues(used when the quantiles are infinite for pvalues equal to 0 or 1).}
}
\author{Hervé Monod, MIA-Jouy, Inra, Domaine de Vilvert, 78352 Jouy en Josas, France}
\examples{
Quantiles(seq(0,1,length=11),"unif",list(min=8,max=10))
Quantiles(seq(0,1,length=11),"unif",list(min=8,max=10),shrink=0.5)
Quantiles(seq(0,1,length=11),"norm",list(mean=0, sd=1),shrink=0.5)
}
