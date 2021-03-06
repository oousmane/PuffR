% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/calpuff_create_varying_line_sources.R
\name{calpuff_create_varying_line_sources}
\alias{calpuff_create_varying_line_sources}
\title{Create CALPUFF input file with line sources that vary in location and time}
\usage{
calpuff_create_varying_line_sources(CSV_input = NULL, df_input = NULL,
  src_name, species_name)
}
\arguments{
\item{CSV_input}{a path to a CSV file containing hourly line source data.}

\item{df_input}{a data frame containing hourly line source data.}

\item{src_name}{the name of the source emitting the species.}

\item{species_name}{the name of the species undergoing emissions.}
}
\description{
Create CALPUFF input file with line sources that vary in location and time.
}

