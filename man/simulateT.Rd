\name{simulateT}
\alias{simulateT}
\title{Simulating the Total Number of Accounts in Error} 
\description{
  Considered a stratified finite population of accounts where each
  account is classified as either acceptable or in error. Based on a
  stratified random sample of accounts an  auditor is  required to give
  an upper 95% confidence bound for the total number of units, T, in
  the population that are in error. Given the sample this uses
  the posterior distribution from a simple hierarchical Bayes model
  to simulate possible values for T. The 0.95 quantile for this posterior
  will be an approximate 95% upper confidence bound for T for most
  populations.
}
\usage{
  simulateT(smp,n,N,grd,R)
}
\arguments{
  \item{smp}{numeric vector of the number of accounts in error in each
    strata in the sample}
  \item{n}{numeric vector of the number of accounts sampled in each
    strata in the population}
  \item{N}{numeric vector of the total number of accounts in each strata
    in the population}
  \item{grd}{numeric vector of values usually taken to be
    seq(0.0001,0.1499,length = 11)}
  \item{R}{an integer which is the number of simulated values of T
    returned}
}  
 \value{
  A vector of length R containing simulated values of T
}
\references{
  \emph{Inference for a stratified finite population
    with a dichotomous characteristic}, Technical report available at
    http://www.stat.umn.edu/~glen/papers/
}
\examples{
grd <- seq(0.0001,0.15,length = 11)
smp <- c(2,1,0)
n <- c(75,50,25)
N <- c(5000,3000,2000)
as.numeric(quantile(simulateT(smp,n,N,grd,40000),0.95))
}
\keyword{misc}

