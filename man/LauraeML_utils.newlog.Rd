% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LauraeML_utils.R
\name{LauraeML_utils.newlog}
\alias{LauraeML_utils.newlog}
\title{Laurae's Machine Learning Utility: new input logger}
\usage{
LauraeML_utils.newlog(mobile, logging, x, y, maximize, score, error, params)
}
\arguments{
\item{mobile}{Type: environment. The environment passed from \code{LauraeML}.}

\item{logging}{Type: character. The \code{logging} parameter passed from \code{LauraeML} (where to store log file).}

\item{x}{Type: vector (numeric). The hyperparameters to use passed from the trainer.}

\item{y}{Type: vector (numeric). The features to use, as binary format (0 for not using, 1 for using) passed from the trainer.}

\item{maximize}{Type: boolean. The \code{maximize} parameter passed from \code{LauraeML} (whether to maximize or not the metric).}

\item{score}{Type: numeric. The \code{score} parameter passed from \code{LauraeML} training functions.}

\item{error}{Type: vector. A vector formatted like \code{c("RMSE", 23534.372, 6, 5)} which is here RMSE = 23534.372 to print with 6 digits and 5 decimals => "023534.37200."}

\item{params}{Type: list of vectors. A list of vectors formatted like \code{list(c("alpha", 1.248, 2, 5), c("beta", 2.58, 2, 5), c("integer", 8, 2, -1))}, which is here (alpha = 1.248 to print with 2 decimals and 5 digits => "01.24800") (beta = 2.58 to print with 2 digits and 5 decimals => "02.58000") (integer = 8 to print with 2 decimals => "08").}
}
\description{
This function is a helper function to do the logging when a new input is existing for \code{LauraeML} during a training iteration of the optimizer. For each elements, the first element refers to the name, the second is for the value, the third for the number of digits, and the fourth for the number of decimals. It is assumed integer value when the decimal number is not specified.
}
\examples{
\dontrun{
hi_score <- 1000
iters <- 10
y <- c(1, 0, 1, 0, 1)
best_params <- list(c("alpha", 1.248, 2, 5), c("beta", 2.58, 2, 5), c("integer", 8, 2))
best_error <- c("RMSE", 23534.372, 6, 5)
LauraeML_utils.newlog("whatever.txt", c(1,2,3,4), y, TRUE, 1000, best_error, best_params)
}

}

