% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/calpuff_07_chem_ddep_gases.R
\name{calpuff_07_chem_ddep_gases}
\alias{calpuff_07_chem_ddep_gases}
\title{Set the CALPUFF chemical parameters for dry deposition of gases}
\usage{
calpuff_07_chem_ddep_gases(calpuff_inp = "calpuff_template.txt",
  species_names = NULL, species_ddep_params = NULL)
}
\arguments{
\item{calpuff_inp}{the absolute path and filename for the working CALPUFF input file.}

\item{species_names}{a vector list of gas-phase chemical species for which dry deposition parameters are available.}

\item{species_ddep_params}{a vector list of the following chemical parameters for dry deposition of gases: (1) alpha star, (2) reactivity, (3) mesophyll resistance, and (4) Henry's Law coefficient.}
}
\description{
This function validates and writes CALPUFF chemical parameters for dry deposition of gases.
}

