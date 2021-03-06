% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stackp.R
\name{push}
\alias{push}
\title{Pushes a value onto the stack, updated comments}
\usage{
push(sp, val)
}
\arguments{
\item{sp}{is the current stack object}

\item{val}{is the value to be added to the stack}
}
\value{
The updated stack object
}
\description{
Pushes a value onto the stack, updated comments
}
\examples{
s <- stackp()
s <- push(s,123)
}
