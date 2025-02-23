% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/titerWF.R
\name{titerWF}
\alias{titerWF}
\title{titerWF}
\usage{
titerWF(data, ..., thresh = 0.68, plot = T)
}
\arguments{
\item{data}{A data frame output from the \code{summarizeWells} function.}

\item{...}{<[`dynamic-dots`][rlang::dyn-dots]> Variable(s) used to group data into independent bleaches for strains. Variable names in data are supplied separated by commas and without quotes.
Typically the grouping variables will be: \code{Metadata_Experiemnt, strain, bleach}.}

\item{thresh}{A numeric value used as a threshold to flag bleaches with high coefficient of variation in well n (cv.n). Bleaches with high cv.n are often either over-bleached or titered incorrectly.}

\item{plot}{Logical, if \code{TRUE}, the default. A ggplot2 object will be returned showing the distribution of CVs in worm number across the wells in control conditions for all independent bleaches.
The \code{thresh} value is plotted as a red vertical line.}
}
\value{
Either a single data frame identical to the input data with the \code{titer_WellFlag} variable added.
The \code{titer_WellFlag} variable is coded as \code{"titer"} for all wells belonging to a strain with a coefficient of variation in worm number that is greater than \code{thresh}.
Or, if \code{plot = T} a list with two elements, the first element is the data frame, the other is the diagnostic plot.
}
\description{
This function will flag wells that belong to bleaches with highly variable worm titers.
}
