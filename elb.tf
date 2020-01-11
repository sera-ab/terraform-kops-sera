resource "aws_elb" "api-resolversgroup-com" {
  name = "api-resolversgroup-com-7aj9e4"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-resolversgroup-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-resolversgroup-com.id}", "${aws_subnet.utility-eu-west-1b-resolversgroup-com.id}", "${aws_subnet.utility-eu-west-1c-resolversgroup-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  cross_zone_load_balancing = false
  idle_timeout              = 300

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "api.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_elb" "bastion-resolversgroup-com" {
  name = "bastion-resolversgroup-co-m7ij16"

  listener = {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.bastion-elb-resolversgroup-com.id}"]
  subnets         = ["${aws_subnet.utility-eu-west-1a-resolversgroup-com.id}", "${aws_subnet.utility-eu-west-1b-resolversgroup-com.id}", "${aws_subnet.utility-eu-west-1c-resolversgroup-com.id}"]

  health_check = {
    target              = "TCP:22"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  idle_timeout = 300

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "bastion.resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}
