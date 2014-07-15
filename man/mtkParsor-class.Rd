\name{mtkParsor-class}
\docType{class}
\alias{mtkParsor-class}
\alias{setXMLFilePath,mtkParsor,character-method}
\alias{run,mtkParsor,mtkExpWorkflow-method}


\title{The \code{mtkParsor} class}

\description{
The \code{mtkParsor} class is the main class used to parse the XML files used in the "mtk" package. It provides a generic way to communicate with the plate-form of model simulation.
}

\section{Class Hierarchy}{
\describe{
\item{Parent classes :}{}
\item{Direct Known Subclasses :}{}
}}

\section{Constructor}{
\describe{
\item{\code{\link[=mtkParsor]{mtkParsor}}}{signature(xmlPath="")}
}}

\section{Slots}{
\describe{
\item{\code{xmlPath}:}{(\code{\link{character}}) the XML file's path and name.}
}}

\section{Methods}{
\describe{

\item{\code{\link[=setXMLFilePath-methods]{setXMLFilePath}}}{signature(this = "mtkParsor", xmlPath = "character"): Sets the xml File.}
\item{\code{\link[=run-methods]{run}}}{signature(this = "mtkParsor", context = "mtkExpWorkflow"): Parses the XML file and fills the workflow defined in the "context" argument with the data extracted from the XML file.}
}}



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


