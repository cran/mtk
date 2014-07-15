\name{plot,mtkProcess-method}
\alias{plot,mtkProcess-method}
\alias{plot}

\title{The \code{plot} method}
\description{Plots graphically the results produced by the process. 
}
\usage{plot(x, y, \dots)}
\value{invisble()}
\arguments{
\item{x}{the underlying object of class \code{\linkS4class{mtkProcess}}}
\item{y}{see \code{par} for details about the graphical parameter arguments}
\item{\dots}{see \code{par} for details about the graphical parameter arguments}
}
\section{Details}{
\enumerate{
\item The behavior of the \code{plot} depends on the sub-class where the method is implemented. 
\item See the documentation of the particular sub-class for details of what is produced. Use \code{methods("plot")} to get all the methods for the \code{plot} generic. 
\item See \code{par} for details about  the graphical parameter arguments.
}
}
\seealso{\code{help(plot}}
\author{Juhui WANG, MIA-Jouy, Inra,  Juhui.Wang@jouy.inra.fr}
\examples{
# Create a designer and an analyser avec the method "Morris"
# to analyze the model "Ishigami":

# Specify the factors to analyze:
	x1 <- make.mtkFactor(name="x1", distribName="unif",
	 distribPara=list(min=-pi, max=pi)) 
	x2 <- make.mtkFactor(name="x2", distribName="unif",
     distribPara=list(min=-pi, max=pi)) 
	x3 <- make.mtkFactor(name="x3", distribName="unif", 
     distribPara=list(min=-pi, max=pi)) 
	factors <- mtkExpFactors(list(x1,x2,x3)) 

# Build the processes:
#   1) the experimental design process with the method "Morris".
		exp1.designer <- mtkNativeDesigner(design="Morris", 
	      information=list(r=20,type="oat",levels=4,grid.jump=2)) 

#   2) the model simulation process with the model "Ishigami".
		exp1.evaluator <- mtkNativeEvaluator(model="Ishigami") 

#   #   3) the analysis process with the default method.
#      Here, it is the Morris method.
		exp1.analyser <- mtkDefaultAnalyser()

# Build the  workflow with the processes defined previously.
		exp1 <- mtkExpWorkflow(expFactors=factors,
	   	 processesVector = c(design=exp1.designer,
			evaluate=exp1.evaluator, analyze=exp1.analyser))
# Run the workflow and plot the results.
		run(exp1)
		plot(exp1)
		
# Extract a process and report its results

		p <- getProcess(exp1, "analyze")
		plot(p)
}
