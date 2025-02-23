% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readXpress.R
\name{readXpress}
\alias{readXpress}
\title{readXpress}
\usage{
readXpress(
  filedir,
  rdafile,
  design = FALSE,
  px_per_um = 3.2937,
  length_thresh = 98.811
)
}
\arguments{
\item{filedir}{The project directory or directories with CellProfiler data.
Provide a full path to the directory or a vector of project directory paths.
Each directory must have a \code{cellprofiler-nf} output .rda file in a sub-folder named \code{cp_data}.}

\item{rdafile}{The specific .rda file name in the \code{cp_data} directory to read.
If multiple project directories are supplied to \code{filedir},
then include the .rda files for each project in the same order of the directories given in \code{filedir}.}

\item{design}{Logical parameter, if TRUE then a design file
will be joined to data.
The design file should be located in a sub-folder
of the filedir named design.
If FALSE no design file will be joined.}

\item{px_per_um}{The number of pixels per micron (um) for the images.
This conversion factor will vary for different objectives or microscopes. The default is set for the AndersenLab
imageXpress nano 2X objective at \code{3.2937} pixels per micron (um). Please enter another conversion factor if necessary.}

\item{length_thresh}{An object length threshold in um used to filter objects from the data. The default setting is \code{98.811} um.
This is the standard threshold used for the AndersenLab images taken with the imageXpress nano. Please adjust only if necessary.}
}
\value{
A single data frame that contains
all CellProfiler model outputs as well as experimental treatments
if a design file is used. If multiple project directories and .rda files are supplied,
they will be joined together. Several messages are also output to describe how objects have been filtered.
}
\description{
This function reads CellProfiler data into R. It is built exclusively for use with worm image data saved as a .rda file.
}
