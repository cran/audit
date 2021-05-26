\name{simulateD}
\alias{simulateD}
\title{Simulating the Total Error in the Accounts}
\description{
  In a population of accounts each unit has a book value, y, (known)
  and a true but unknown value, x. For a random sample of accounts
  the true values are observed. Using the posterior from a stepwise
  Bayes model this simulates possible values of D, the sum of
  the differences between the the book values and the true values.
  The 0.95 quantile of this posterior  will yield   an approximate 95%
  upper confidence bound for T for most populations and will be less
  conservative than the Stringer bound.  
}
\usage{
  simulateD(ysmp,xsmp,yunsmp ,n,pgt,pwa,R)
}
\arguments{
  \item{ysmp}{numeric vector of book values for the units in the sample}
  \item{xsmp}{the corresponding true values for the units in the sample}
  \item{yunsmp}{numeric vector of the book values for the units not in
    the sample}
  \item{n}{an integer which is the size of the sample}
  \item{pgt}{numeric vector of prior guesses for the taints}
  \item{pwa}{weights corresponding to the taints that appear in the posterior}
  \item{R}{an integer which is the number of simulated values of D returned}
}
\value{
  A vector of lenght R containing simulated values of D 
}
\details{
  For a given unit (y-x)/x is its taint. pgt is a prior guess for the
  possible taints in the population. pwt specifies how much weight
  the prior guess pgt should have in the posterior.  When all the taints
  are  assumed   to be  nonnegative then the Stringer bound is often
  used. Setting both pqt and pwt equal to one yields a slightly shorter
  bound than that of Stringer's.
}
\references{
   Meeden, G. and Sargent, D. (2007)
   Some Bayesian methods for two auditing problems.
   \emph{Communications in Statistics --- Theory and Methods},
   \bold{36}, 2727--2740.
   \doi{10.1080/03610920701386802}.
}
\examples{
y <- rgamma(500,5)
x <- y
dum <- sample(1:500,50)
x[dum] <- x[dum]*runif(50,.05,0.5)
smp <- sample(1:500,40)
quantile(simulateD(y[smp],x[smp],y[-smp],40,1,1,1000),0.95)
}
\keyword{misc}  






