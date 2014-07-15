\name{mtkParsor}
\alias{mtkParsor}
\title{The constructor of the class \code{mtkParsor}}

\description{The constructor}

\usage{mtkParsor(xmlPath="")
}
\value{an object of the \code{\linkS4class{mtkParsor}} class}

\arguments{
\item{xmlPath}{a string to specify the XML file to parse.}
}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Create a parsor with the file "inst/extdata/WWDM.xml".

# Specify the XML file's name
	xmlFile <- "WWDM_morris.xml"

#  find where the examples are held.
#  This is only necessary for the example since the system does 
#  not know where the file "WWDM.xml" is kept.
	xmlFilePath <- paste(path.package("mtk", quiet = TRUE),
		"/extdata/",xmlFile,sep = "") 

## Create a parsor from the xml file
	parsor <- mtkParsor(xmlFilePath)

# Create an empty workflow.
	workflow <- mtkExpWorkflow()

# Parse the XML file and initialize the workflow 
# with the data extracted from the XML file.
	run(parsor, workflow) 

# Run the workflow and report the results of the sensitivity analysis

	run(workflow)
	summary(workflow)
}

