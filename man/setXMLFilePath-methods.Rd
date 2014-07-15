\name{setXMLFilePath-methods}
\alias{setXMLFilePath-methods}
\alias{setXMLFilePath}

\title{The \code{setXMLFilePath} function}
\description{Specifies the XML file to parse.}
\usage{setXMLFilePath(this, xmlPath)}
\value{invisble()}
\arguments{
\item{this}{the underlying object of class \code{\linkS4class{mtkParsor}}}
\item{xmlPath}{a string indicating the XML file to parse.}
}
\author{Juhui WANG, MIA-Jouy, Inra, Juhui.Wang@jouy.inra.fr }

\references{J. Wang, H. Richard, R. Faivre, H. Monod (2013). Le package \code{mtk}, une bibliothèque R pour l'exploration numérique des modèles.
 \emph{In:} Analyse de sensibilité et exploration de modèles :  Application aux sciences de la nature et  de l'environnement 
 (R. Faivre, B. Iooss, S. Mahévas, D. Makowski, H. Monod, Eds). Editions Quae, Versailles.}

\examples{
# Specify the XML file's name
	xmlFile <- "WWDM_morris.xml"

## Find where the example XML file is held in the 'mtk' package. 
## (This line is nit useful for real life example!)
	xmlFile <- paste(path.package("mtk", quiet = TRUE),
		"/extdata/",xmlFile,sep = "") 

# Create a XML parsor.		
	parsor <- mtkParsor(xmlFile)

# Create an empty workflow.
	workflow <- mtkExpWorkflow()

# Parse the XML file and initialize the workflow 
# with the data extracted from the XML file.
	run(parsor, workflow) 

# Run the workflow
	run(workflow)
	
# If you want to parse another XML file with the same parsor,
# just changes the XML file to "inst/extdata/ishigami_fast.xml".

	xmlFile <- "ishigami_fast.xml"

# Find where the example XML file is held in the 'mtk' package. 
# (This line is nit useful for real life example!)
	xmlFile <- paste(path.package("mtk", quiet = TRUE),
		"/extdata/",xmlFile,sep = "") 

# Change the XML file to the new one 
	setXMLFilePath(parsor, xmlFile)

# Parse the new XML file and initialize the workflow
# with the data extracted from the XML file.
	run(parsor, workflow) 

# Run the workflow
	run(workflow)

}



