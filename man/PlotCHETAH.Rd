% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Utils_CHETAH.R
\name{PlotCHETAH}
\alias{PlotCHETAH}
\title{Plot the CHETAH classification on 2D visulization like t-SNE
+ the corresponding classification tree,
colored with the same colors}
\usage{
PlotCHETAH(
  input,
  redD = NA,
  interm = FALSE,
  return = FALSE,
  tree = TRUE,
  pt.size = 1,
  return_col = FALSE,
  col = NULL
)
}
\arguments{
\item{input}{a SingleCellExperiment on which \code{\link{CHETAHclassifier}} has been run}

\item{redD}{the name of the reducedDim of the input to use for plotting}

\item{interm}{color the intermediate instead of the final types}

\item{return}{return the plot instead of printing it}

\item{tree}{plot the tree, along with the classification}

\item{pt.size}{the point-size of the classication plot}

\item{return_col}{whether the colors that are used for
the classification plot should be returned}

\item{col}{custom colors for the cell types. \emph{the colors
should be named with the corresponding cell types}}
}
\value{
a ggplot object
}
\description{
Plot the CHETAH classification on 2D visulization like t-SNE
+ the corresponding classification tree,
colored with the same colors
}
\examples{
data('input_mel')
#' ## Standard plot (final types colored)
PlotCHETAH(input = input_mel)

## Intermediate types colored
PlotCHETAH(input = input_mel, interm = TRUE)

## Plot only the t-SNE plot
PlotCHETAH(input = input_mel, tree = FALSE)
}
