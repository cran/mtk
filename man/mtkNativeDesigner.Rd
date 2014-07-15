\name{mtkNativeDesigner}
\alias{mtkNativeDesigner}
\title{The constructor of the class \code{mtkNativeDesigner}}
\description{ The constructor.}
\usage{
mtkNativeDesigner(design=NULL, X=NULL, information=NULL)
}
\value{an object of the \code{\linkS4class{mtkNativeDesigner}} class}

\arguments{
\item{design}{NULL, an R function or a string to specify the method used to generate the experiments design.}
\item{X}{NULL or a data.frame to load the experimental design produced off-line.}
\item{information}{a named list to provide with supplementary information about the experimental design produced off-line or the parameters used by the designer.}
}
\section{Details}{
We can construct an object of the \code{\linkS4class{mtkNativeDesigner}} class from the following situations: 
\itemize{
\item{the designer is provided within the package "mtk"}{The argument "design" takes a string giving the method used to generate the experimental design, and the argument 
"information" gives the list of parameters used by the designer. e.g. designer <- mtkNativeDesigner( design="Morris", information = list(nboot=20)).}
\item{the designer is provided with an R function implemented outside the package "mtk"}{The argument "design" takes the R function, the argument "information" may be used to give supplementary information about the R function.}
\item{the experimental design is produced off-line and available as a data.frame}{The argument "design" is not used, the argument "X" takes the data.frame holding the available experimental design, and the argument "information" may be omitted
 or simply used to give supplementary information about the method used to generate the experimental design. e.g. Designer <- mtkNativeDesigner( X = mcDesign, information = list(sampling = "Monte-Carlo")).}
}

For details uses, see examples from \code{help(mtkNativeEvaluator)}.
}

\seealso{\code{help(mtkNativeEvaluator)}}

\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create a native designer with the method "Morris"
# implemented in the package "mtk"

designer <- mtkNativeDesigner(design="Morris", information=list(size=20))
}
