resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.resolversgroup-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.resolversgroup-com.id}"
}

resource "aws_route" "private-eu-west-1a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1a-resolversgroup-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1a-resolversgroup-com.id}"
}

resource "aws_route" "private-eu-west-1b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1b-resolversgroup-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1b-resolversgroup-com.id}"
}

resource "aws_route" "private-eu-west-1c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-eu-west-1c-resolversgroup-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.eu-west-1c-resolversgroup-com.id}"
}

resource "aws_route53_record" "api-resolversgroup-com" {
  name = "api.resolversgroup.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-resolversgroup-com.dns_name}"
    zone_id                = "${aws_elb.api-resolversgroup-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z11NPE9KYP328N"
}

resource "aws_route53_record" "bastion-resolversgroup-com" {
  name = "bastion.resolversgroup.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.bastion-resolversgroup-com.dns_name}"
    zone_id                = "${aws_elb.bastion-resolversgroup-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z11NPE9KYP328N"
}

resource "aws_route_table" "private-eu-west-1a-resolversgroup-com" {
  vpc_id = "${aws_vpc.resolversgroup-com.id}"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "private-eu-west-1a.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
    "kubernetes.io/kops/role"                  = "private-eu-west-1a"
  }
}

resource "aws_route_table" "private-eu-west-1b-resolversgroup-com" {
  vpc_id = "${aws_vpc.resolversgroup-com.id}"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "private-eu-west-1b.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
    "kubernetes.io/kops/role"                  = "private-eu-west-1b"
  }
}

resource "aws_route_table" "private-eu-west-1c-resolversgroup-com" {
  vpc_id = "${aws_vpc.resolversgroup-com.id}"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "private-eu-west-1c.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
    "kubernetes.io/kops/role"                  = "private-eu-west-1c"
  }
}

resource "aws_route_table" "resolversgroup-com" {
  vpc_id = "${aws_vpc.resolversgroup-com.id}"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
    "kubernetes.io/kops/role"                  = "public"
  }
}

resource "aws_route_table_association" "private-eu-west-1a-resolversgroup-com" {
  subnet_id      = "${aws_subnet.eu-west-1a-resolversgroup-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1a-resolversgroup-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1b-resolversgroup-com" {
  subnet_id      = "${aws_subnet.eu-west-1b-resolversgroup-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1b-resolversgroup-com.id}"
}

resource "aws_route_table_association" "private-eu-west-1c-resolversgroup-com" {
  subnet_id      = "${aws_subnet.eu-west-1c-resolversgroup-com.id}"
  route_table_id = "${aws_route_table.private-eu-west-1c-resolversgroup-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1a-resolversgroup-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1a-resolversgroup-com.id}"
  route_table_id = "${aws_route_table.resolversgroup-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1b-resolversgroup-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1b-resolversgroup-com.id}"
  route_table_id = "${aws_route_table.resolversgroup-com.id}"
}

resource "aws_route_table_association" "utility-eu-west-1c-resolversgroup-com" {
  subnet_id      = "${aws_subnet.utility-eu-west-1c-resolversgroup-com.id}"
  route_table_id = "${aws_route_table.resolversgroup-com.id}"
}

