resource "aws_internet_gateway" "resolversgroup-com" {
  vpc_id = "${aws_vpc.resolversgroup-com.id}"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}
