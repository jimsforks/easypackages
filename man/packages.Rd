% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/packages.R
\name{packages}
\alias{packages}
\title{packages()}
\usage{
packages(..., prompt = TRUE)
}
\arguments{
\item{...}{one or more package names or \code{package_obj} objects}

\item{prompt}{(default is TRUE) prompt the user before installing packages?
For interactive use keeping the default makes the most sense. For 
interactive scripts, or scripts that you are sharing with those you trust,
it may make more sense to switch this to FALSE.}
}
\description{
Loads one or more packages, and installs them after a user prompt if they
are not already installed. You may supply either package names or 
\code{package_obj} objects to this function. You can install Github packages
by supplying \code{username/repo} to this function, or \code{username$repo}
for Bitbucket packages.
}
\details{
\code{package_obj} allows you to supply it an install function if
the package isn't on CRAN or in a public GitHub or Bitbucket repo.

You may also add \code{::} to the end of a package name to load
the package instead of attaching the package (this means that the package
will not be added to the search list, but will be available to access via
the \code{::} operator).
}
\examples{
\dontrun{
packages("dplyr", "ggplot2", "rvest", "magrittr")
packages("dplyr::", "Rdatatable/data.table")
}
}

