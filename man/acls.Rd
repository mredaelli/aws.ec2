% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/network_acls.R
\name{create_netacl}
\alias{create_netacl}
\alias{delete_netacl}
\title{EC2 Network ACLs}
\usage{
create_netacl(vpc, ...)

delete_netacl(acl, ...)
}
\arguments{
\item{vpc}{A character string specifying a VPC Allocation ID or an object of class \dQuote{ec2_ip}.}

\item{...}{Additional arguments passed to \code{\link{ec2HTTP}}.}

\item{acl}{\dots}
}
\value{
For \code{create_netacl}, a list of class \dQuote{ec2_acl}. For \code{delete_netacl}, a logical indicating whether the operation succeeded.
}
\description{
Create/Delete Network ACL for VPC
}
\details{
Access Control Lists (ACLs) for a Virtual Private Cloud (VPC) provide a layer of security for an EC2 instance or set of instances. These can be used in tandem with or in lieu of Security Groups (see \code{\link{describe_sgroups}}).
}
\examples{
\dontrun{
# create a VPC
v <- create_vpc(cidr = "10.0.0.0/16")
describe_vpcs()

# create a Network ACL for the VPC
acl <- create_netacl(v)

# cleanup
delete_acl(acl)
delete_vpc(v)
}
}
\references{
\url{http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Security.html}
\url{http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkAcl.html}
\url{http://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteNetworkAcl.html}
}
\seealso{
\code{\link{describe_netacls}}
}
\keyword{security}
