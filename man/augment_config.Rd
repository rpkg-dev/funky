% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/funky.gen.R
\name{augment_config}
\alias{augment_config}
\title{Augment package configuration data}
\usage{
augment_config(pkg = utils::packageName(env = parent.frame()))
}
\arguments{
\item{pkg}{\R package name. A character scalar. Defaults to the name of the calling package.}
}
\value{
A \link[tibble:tbl_df-class]{tibble} with at minimum the columns \code{key}, \code{default_value}, \code{r_opt} and \code{env_var}.
}
\description{
Augments a package's funky configuration data (\verb{<pkg>:::funky_config}) with the columns \code{r_opts} and \code{env_var} holding the respective \R option and
environment variable names.
}
\examples{
try(
  funky::augment_config(pkg = "pkgpurl")
)
}
\seealso{
Other package configuration data functions:
\code{\link{config}()},
\code{\link{print_config}()},
\code{\link{ptype_config}}
}
\concept{pkg_config_data}
