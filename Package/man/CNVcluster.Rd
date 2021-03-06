% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CNVcluster.R
\name{CNVcluster}
\alias{CNVcluster}
\title{CNVcluster}
\usage{
CNVcluster(Y, cp, L)
}
\arguments{
\item{Y}{the numeric vector of the intensities of markers}

\item{cp}{the numeric vector of the position index for the identified change-points}

\item{L}{repeat times in the EM algorithm, defaults to 100}
}
\value{
The return is the clustered CNV segments by presenting the start position and end position, length of the CNV and the copy number states (duplication or deletion). It also returns a vector of final candidates of change-points.

newcp the final list of change-points

h the bandwidth used for the identification of change-points

cnv.state copy number state for each CNV

cnv.start start position of each CNV

cnv.end end position of each CNV
}
\description{
This function uses different priors settings to achieve convergence of the Expectation-Maximization algorithm, and then determine the best clustering results by applying the modified BIC.
}
\seealso{
\link{gausianMixture} for clustering of CNVs using Expectation-Maximization algorithm.
}
