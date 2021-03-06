% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/calpuff_04_grid_levels.R
\name{calpuff_04_grid_levels}
\alias{calpuff_04_grid_levels}
\title{Set CALPUFF parameters for the map projection, datum, and grid definitions}
\usage{
calpuff_04_grid_levels(calpuff_inp = "calpuff_template.txt",
  read_xy_from_geo_dat = TRUE, pmap = "UTM", feast = 0, fnorth = 0,
  iutmzn = NULL, utmhem = NULL, rlat0 = "40N", rlon0 = "90W",
  xlat1 = "30N", xlat2 = "60N", datum = "WGS-84", nx = NULL,
  ny = NULL, dgridkm = NULL, xorigkm = NULL, yorigkm = NULL, nz = 12,
  zface = NULL, ibcomp = NULL, jbcomp = NULL, iecomp = NULL,
  jecomp = NULL, lsamp = TRUE, ibsamp = NULL, jbsamp = NULL,
  iesamp = NULL, jesamp = NULL, meshdn = 1)
}
\arguments{
\item{calpuff_inp}{the absolute path and filename for the working CALPUFF input file.}

\item{pmap}{the projection of the CALPUFF domain.}

\item{feast}{the false easting at the projection origin for TTM, LCC, or LAZA projection types.}

\item{fnorth}{the false northing at the projection origin for TTM, LCC, or LAZA projection types.}

\item{iutmzn}{the UTM zone.}

\item{utmhem}{the UTM hemisphere.}

\item{rlat0}{latitude (decimal degrees) of projection origin for TTM, LCC, PS, EM, or LAZA projection types.}

\item{rlon0}{longitude (decimal degrees) of projection origin for TTM, LCC, PS, EM, or LAZA projection types.}

\item{xlat1}{the lower matching parallel of latitude (decimal degrees) for LCC or PS projection types.}

\item{xlat2}{the upper matching parallel of latitude (decimal degrees) for LCC or PS projection types.}

\item{datum}{the datum-region for output coordinates.}

\item{nx}{the number of grid cells in the x direction.}

\item{ny}{the number of grid cells in the y direction.}

\item{dgridkm}{the grid spacing in units of km.}

\item{xorigkm}{the reference grid x coordinate (in km) of the southwest corner of grid cell (1, 1).}

\item{yorigkm}{the reference grid y coordinate (in km) of the southwest corner of grid cell (1, 1).}

\item{nz}{the number of vertical levels.}

\item{zface}{a vector containing cell face heights in meters.}

\item{ibcomp}{the x index at the lower-left corner of the computational grid.}

\item{jbcomp}{the y index at the lower-left corner of the computational grid.}

\item{iecomp}{the x index at the upper-right corner of the computational grid.}

\item{jecomp}{the y index at the upper-right corner of the computational grid.}

\item{lsamp}{the choice of whether gridded receptors are to be used.}

\item{ibsamp}{the x index at the lower-left corner of the sampling grid.}

\item{jbsamp}{the y index at the lower-left corner of the sampling grid.}

\item{iesamp}{the x index at the upper-right corner of the sampling grid.}

\item{jesamp}{the y index at the upper-right corner of the sampling grid.}

\item{meshdn}{the nesting factor of the sampling grid.}
}
\description{
This function validates and writes CALPUFF parameters for the map projection, datum, and grid definitions to the working CALPUFF.INP file.
}

