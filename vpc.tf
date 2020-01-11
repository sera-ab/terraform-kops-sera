resource "aws_vpc" "resolversgroup-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "resolversgroup-com" {
  domain_name         = "eu-west-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "resolversgroup-com" {
  vpc_id          = "${aws_vpc.resolversgroup-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.resolversgroup-com.id}"
}
