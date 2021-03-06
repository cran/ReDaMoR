% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RelDataModel.R
\name{toDBM}
\alias{toDBM}
\title{Convert a \link{RelDataModel} object in a list of 5 normalized tibbles}
\usage{
toDBM(rdm)
}
\arguments{
\item{rdm}{a \link{RelDataModel} object}
}
\value{
A list with the following tibbles:
\itemize{
\item \strong{tables}: The tables in the model with the following information
\itemize{
\item \strong{name}: the name of the table
\item \strong{x}: the x coordinate of the table in the model drawing
(NA ==> position undefined)
\item \strong{y}: the y coordinate of the table in the model drawing
(NA ==> position undefined)
\item \strong{color}: the color of the table in the model drawing
(NA ==> undefined)
\item \strong{comment}: comment about the table
}
\item \strong{fields}: The fields in the model with the following information
\itemize{
\item \strong{name}: the name of the field
\item \strong{type}: the type of the field
\item \strong{nullable}: a logical indicating if the field can be null
\item \strong{comment}: comment about the field
\item \strong{table}: the name of the table to which the field belongs
}
\item \strong{primaryKeys}: The primary keys in the model with the
following information
\itemize{
\item \strong{table}: the name of the relevant table
\item \strong{field}: the name of the field participating to the primary key
}
\item \strong{foreignKeys}: The foreign keys in the model with the
following information
\itemize{
\item \strong{table}: the name of the referring table
\item \strong{fki}: the identifier of the foreign key (by referring table)
\item \strong{field}: the name of the referring field
\item \strong{refTable}: the name of the referred table
\item \strong{refField}: the name of the referred field
}
\item \strong{indexes}: The indexes in the model with the following information
\itemize{
\item \strong{table}: the name of the relevant table
\item \strong{idx}: the identifier of the index (by table)
\item \strong{field}: the name of the field participating to the index
\item \strong{unique}: a logical indicating if the field is unique
}
}
}
\description{
Convert a \link{RelDataModel} object in a list of 5 normalized tibbles
}
