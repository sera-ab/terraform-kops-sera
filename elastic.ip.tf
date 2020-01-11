resource "aws_eip" "eu-west-1a-resolversgroup-com" {
  vpc = true

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "eu-west-1a.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1b-resolversgroup-com" {
  vpc = true

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "eu-west-1b.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_eip" "eu-west-1c-resolversgroup-com" {
  vpc = true

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "eu-west-1c.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

