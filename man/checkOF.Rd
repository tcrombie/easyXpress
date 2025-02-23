% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/checkOF.R
\name{checkOF}
\alias{checkOF}
\title{checkOF}
\usage{
checkOF(data, plot, ...)
}
\arguments{
\item{data}{A data frame output from any ObjectFlag (OF) function from easyXpress.}

\item{plot}{Logical, if \code{TRUE} a ggplot2 object will be returned in a list.}

\item{...}{<[`dynamic-dots`][rlang::dyn-dots]> Variable(s) used to group data. Variable names in data are supplied separated by commas and without quotes.
For example, \code{drug, strain}.}
}
\value{
If \code{plot = TRUE} a list with two elements is returned. The first element (df.checkOF) is a data frame summarized by ...,
with the numbers of objects flagged and retained by each OF applied to the data. The second element (p.checkOF)
is a ggplot2 object showing the objects retained after all filtering and faceted by ...
If \code{plot = FALSE} only a data frame is returned.
}
\description{
checkOF
}
