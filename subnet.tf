resource "aws_subnet" "eu-west-1a-resolversgroup-com" {
  vpc_id            = "${aws_vpc.resolversgroup-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "eu-west-1a.resolversgroup.com"
    SubnetType                                 = "Private"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
    "kubernetes.io/role/internal-elb"          = "1"
  }
}

resource "aws_subnet" "eu-west-1b-resolversgroup-com" {
  vpc_id            = "${aws_vpc.resolversgroup-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "eu-west-1b.resolversgroup.com"
    SubnetType                                 = "Private"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
    "kubernetes.io/role/internal-elb"          = "1"
  }
}

resource "aws_subnet" "eu-west-1c-resolversgroup-com" {
  vpc_id            = "${aws_vpc.resolversgroup-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "eu-west-1c.resolversgroup.com"
    SubnetType                                 = "Private"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
    "kubernetes.io/role/internal-elb"          = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1a-resolversgroup-com" {
  vpc_id            = "${aws_vpc.resolversgroup-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "eu-west-1a"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "utility-eu-west-1a.resolversgroup.com"
    SubnetType                                 = "Utility"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1b-resolversgroup-com" {
  vpc_id            = "${aws_vpc.resolversgroup-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "eu-west-1b"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "utility-eu-west-1b.resolversgroup.com"
    SubnetType                                 = "Utility"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
}

resource "aws_subnet" "utility-eu-west-1c-resolversgroup-com" {
  vpc_id            = "${aws_vpc.resolversgroup-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "eu-west-1c"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "utility-eu-west-1c.resolversgroup.com"
    SubnetType                                 = "Utility"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
}