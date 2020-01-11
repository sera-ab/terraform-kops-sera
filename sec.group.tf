resource "aws_security_group" "api-elb-resolversgroup-com" {
  name        = "api-elb.resolversgroup.com"
  vpc_id      = "${aws_vpc.resolversgroup-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "api-elb.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_security_group" "bastion-elb-resolversgroup-com" {
  name        = "bastion-elb.resolversgroup.com"
  vpc_id      = "${aws_vpc.resolversgroup-com.id}"
  description = "Security group for bastion ELB"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "bastion-elb.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_security_group" "bastion-resolversgroup-com" {
  name        = "bastion.resolversgroup.com"
  vpc_id      = "${aws_vpc.resolversgroup-com.id}"
  description = "Security group for bastion"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "bastion.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_security_group" "masters-resolversgroup-com" {
  name        = "masters.resolversgroup.com"
  vpc_id      = "${aws_vpc.resolversgroup-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "masters.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_security_group" "nodes-resolversgroup-com" {
  name        = "nodes.resolversgroup.com"
  vpc_id      = "${aws_vpc.resolversgroup-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "nodes.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-resolversgroup-com.id}"
  source_security_group_id = "${aws_security_group.masters-resolversgroup-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-resolversgroup-com.id}"
  source_security_group_id = "${aws_security_group.masters-resolversgroup-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-resolversgroup-com.id}"
  source_security_group_id = "${aws_security_group.nodes-resolversgroup-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-resolversgroup-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-resolversgroup-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.bastion-elb-resolversgroup-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "bastion-to-master-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-resolversgroup-com.id}"
  source_security_group_id = "${aws_security_group.bastion-resolversgroup-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "bastion-to-node-ssh" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-resolversgroup-com.id}"
  source_security_group_id = "${aws_security_group.bastion-resolversgroup-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-resolversgroup-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-resolversgroup-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-resolversgroup-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-resolversgroup-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-resolversgroup-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-resolversgroup-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-resolversgroup-com.id}"
  source_security_group_id = "${aws_security_group.nodes-resolversgroup-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-resolversgroup-com.id}"
  source_security_group_id = "${aws_security_group.nodes-resolversgroup-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-resolversgroup-com.id}"
  source_security_group_id = "${aws_security_group.nodes-resolversgroup-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-resolversgroup-com.id}"
  source_security_group_id = "${aws_security_group.nodes-resolversgroup-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-elb-to-bastion" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.bastion-resolversgroup-com.id}"
  source_security_group_id = "${aws_security_group.bastion-elb-resolversgroup-com.id}"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "ssh-external-to-bastion-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.bastion-elb-resolversgroup-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

