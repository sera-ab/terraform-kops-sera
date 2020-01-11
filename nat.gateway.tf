resource "aws_nat_gateway" "eu-west-1a-resolversgroup-com" {
  allocation_id = "${aws_eip.eu-west-1a-resolversgroup-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1a-resolversgroup-com.id}"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "eu-west-1a.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1b-resolversgroup-com" {
  allocation_id = "${aws_eip.eu-west-1b-resolversgroup-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1b-resolversgroup-com.id}"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "eu-west-1b.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_nat_gateway" "eu-west-1c-resolversgroup-com" {
  allocation_id = "${aws_eip.eu-west-1c-resolversgroup-com.id}"
  subnet_id     = "${aws_subnet.utility-eu-west-1c-resolversgroup-com.id}"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "eu-west-1c.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

