% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/source.R
\name{datasource}
\alias{datasource}
\title{Create a source object.}
\usage{
datasource(file, skip = 0)
}
\arguments{
\item{file}{Either a path to a file, a url, a connection, or literal data
   (either a single string or a raw vector). Connections and urls are saved
   to a temporary file before being read.

   Literal data is most useful for examples and tests. It must contain at
   least one new line to be recognised as data (instead of a path).}

\item{skip}{Number of lines to skip before reading data.}
}
\description{
Create a source object.
}
\examples{
# Literal csv
datasource("a,b,c\\n1,2,3")
datasource(charToRaw("a,b,c\\n1,2,3"))

# Local path
datasource(system.file("extdata/mtcars.csv", package = "readr"))

# Connection
datasource(rawConnection(charToRaw("abc\\n123")))
}
\keyword{internal}

