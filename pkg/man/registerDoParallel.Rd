\name{registerDoParallel}
\alias{registerDoParallel}
\title{registerDoParallel}
\description{
The \code{registerDoParallel} function is used to register the 
parallel backend with the \code{foreach} package.
}
\usage{
registerDoParallel(cl, cores=NULL, \dots)
}
\arguments{
  \item{cl}{A cluster object as returned by \code{makeCluster}, or the number
  of nodes to be created in the cluster. If not specified, on Windows a 
  three worker cluster is created and used.}
  \item{cores}{The number of cores to use for parallel execution. If not
  specified, the number of cores is set to the value of 
  \code{options("cores")}, if specified, or to one-half the number of cores detected
  by the \code{parallel} package.}
  \item{\dots}{Package options.  Currently, only the \code{nocompile} option
  is supported.  If \code{nocompile} is set to \code{TRUE}, compiler
  support is disabled.}
}
\details{
The \code{parallel} package from R 2.14.0 and later provides functions for parallel
execution of R code on machines with multiple cores or processors or multiple computers.
It is essentially a blend of the \code{snow} and \code{multicore} packages. By default,
the \code{doParallel} package uses \code{snow}-like functionality on Windows systems and
\code{multicore}-like functionality on Unix-like systems. The \code{snow}-like functionality
should work fine on Unix-like systems, but the \code{multicore}-like functionality is
limited to a single sequential worker on Windows systems.
On workstations with multiple cores running Unix-like operating systems, 
the system \code{fork} call is used to spawn copies of the current process. 
}
\keyword{utilities}
