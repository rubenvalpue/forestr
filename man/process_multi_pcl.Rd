% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/process_multi_pcl.R
\name{process_multi_pcl}
\alias{process_multi_pcl}
\title{Process multiplie PCL transects.}
\usage{
process_multi_pcl(data_dir, user_height, marker.spacing, max.vai,
  pavd = FALSE, hist = FALSE)
}
\arguments{
\item{data_dir}{directory where PCL .csv files are stored}

\item{user_height}{height of laser from ground based on user in meters}

\item{marker.spacing}{space between markers in the PCL data, in meters}

\item{max.vai}{the maximum value of column VAI. The default is 8. Should be a max value, not a mean.}

\item{pavd}{logical input to include Plant Area Volume Density Plot from [plot_pavd], if TRUE it is included, if FALSE, it is not.}

\item{hist}{logical input to include histogram of VAI with PAVD plot, if TRUE it is included, if FALSE, it is not.}
}
\value{
writes the hit matrix, summary matrix, and output variables to csv in an output folder, along with hit grid plot
}
\description{
\code{process_multi_pcl} imports and processes mutiple PCL transect.
}
\details{
This is a specific function that works using the input of a data directory of .csv
files where the function cycles through the files there and processes multiple
files, producing the same output files described in \code{process_pcl}
}
\examples{

# This function works on a directory of raw PCL data
\dontrun{data_directory <- "./data/PCL_transects/"  #data directory containing PCL transects
process_multi_pcl(data_directory, user_height = 1.05, marker.spacing = 10, max.vai = 8)

process_multi_pcl("./data/PCL_transects/", user_height = 1.05, marker.spacing = 10,
max.vai = 8)
}

}
\seealso{
\code{\link{process_pcl}}
}
\keyword{files}
\keyword{multiple}
\keyword{pcl}
\keyword{processing,}
