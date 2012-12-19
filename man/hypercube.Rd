\name{hypercube}
\alias{hypercube}
\title{
  Diffusion kernels on bi-allelic genotypes
}
\description{
  This function construct a diffusion kernel on a \eqn{p}-dimensional
  hypercube, where each genotype takes on two possible configurations.
  This graph is obained by the
  \eqn{p}-Cartesian graph product of a complete graph \eqn{K_2}. 
  It contains \eqn{2^p} vertices corresponding to sequences of
  genotypes, and two vertices are adjacent if and only if just one SNP
  locus differs. 
}
\usage{
hypercube(X, theta)
}
\arguments{
  \item{X}{A genotype matrix of \eqn{n} individuals with \eqn{p}
    bi-allelic genotypes (\eqn{n \times p}).
  }
  \item{theta}{The rate of diffusion. 
  }
}
\value{
  Diffusion kernel matrix of size \eqn{n \times n}.
  This can be viewed as a covariance among individuals given the
  diffusion rate. 
}
\references{
  Kondor R and Lafferty J: (2002) Diffusion Kernels on Graphs and Other Discrete Input Spaces. ICML. 

  Morota G and Koyama M: (2012) Diffusion kernels on SNP data embedded in a non-Euclidean metric. In preparation. 
}
\author{
  Gota Morota \email{morota@ansci.wisc.edu} and Masanori Koyama \email{koyama@math.wisc.edu}
}
\examples{
# set a seed
set.seed(4321)

# create a genotype matrix of 5 individuals with 10 bi-allelic genotypes
X <- matrix(sample(c(0,1), 50, prob=c(0.6,0.4), replace=TRUE), ncol=10)

# set the rate of diffusion equal to 1
theta <- 1

# compute a hypercube kernel 
hypercube(X, theta)
}
\keyword{graphs}
\keyword{nonparametric}
