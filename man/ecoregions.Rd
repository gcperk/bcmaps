% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shortcuts.R
\name{ecoregions}
\alias{ecoregions}
\title{British Columbia Ecoregions}
\usage{
ecoregions(class = "sf")
}
\arguments{
\item{class}{what class you want the object in? \code{"sf"} (default) or \code{"sp"}.}
}
\value{
The spatial layer of \code{ecoregions} in the desired class
}
\description{
You must have the \code{bcmaps.rdata} package installed to use this function.
}
\details{
Type \code{?bcmaps.rdata::ecoregions} for details.
}
\examples{
\dontrun{
my_layer <- ecoregions()
my_layer_sp <- ecoregions(class = 'sp')
}

}
