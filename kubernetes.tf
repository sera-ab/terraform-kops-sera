locals = {
  bastion_autoscaling_group_ids     = ["${aws_autoscaling_group.bastions-resolversgroup-com.id}"]
  bastion_security_group_ids        = ["${aws_security_group.bastion-resolversgroup-com.id}"]
  bastions_role_arn                 = "${aws_iam_role.bastions-resolversgroup-com.arn}"
  bastions_role_name                = "${aws_iam_role.bastions-resolversgroup-com.name}"
  cluster_name                      = "resolversgroup.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-eu-west-1a-masters-resolversgroup-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-resolversgroup-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-resolversgroup-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-resolversgroup-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-resolversgroup-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-resolversgroup-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-resolversgroup-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-resolversgroup-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.eu-west-1a-resolversgroup-com.id}", "${aws_subnet.eu-west-1b-resolversgroup-com.id}", "${aws_subnet.eu-west-1c-resolversgroup-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-resolversgroup-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-resolversgroup-com.name}"
  region                            = "eu-west-1"
  route_table_private-eu-west-1a_id = "${aws_route_table.private-eu-west-1a-resolversgroup-com.id}"
  route_table_private-eu-west-1b_id = "${aws_route_table.private-eu-west-1b-resolversgroup-com.id}"
  route_table_private-eu-west-1c_id = "${aws_route_table.private-eu-west-1c-resolversgroup-com.id}"
  route_table_public_id             = "${aws_route_table.resolversgroup-com.id}"
  subnet_eu-west-1a_id              = "${aws_subnet.eu-west-1a-resolversgroup-com.id}"
  subnet_eu-west-1b_id              = "${aws_subnet.eu-west-1b-resolversgroup-com.id}"
  subnet_eu-west-1c_id              = "${aws_subnet.eu-west-1c-resolversgroup-com.id}"
  subnet_utility-eu-west-1a_id      = "${aws_subnet.utility-eu-west-1a-resolversgroup-com.id}"
  subnet_utility-eu-west-1b_id      = "${aws_subnet.utility-eu-west-1b-resolversgroup-com.id}"
  subnet_utility-eu-west-1c_id      = "${aws_subnet.utility-eu-west-1c-resolversgroup-com.id}"
  vpc_cidr_block                    = "${aws_vpc.resolversgroup-com.cidr_block}"
  vpc_id                            = "${aws_vpc.resolversgroup-com.id}"
}

output "bastion_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.bastions-resolversgroup-com.id}"]
}

output "bastion_security_group_ids" {
  value = ["${aws_security_group.bastion-resolversgroup-com.id}"]
}

output "bastions_role_arn" {
  value = "${aws_iam_role.bastions-resolversgroup-com.arn}"
}

output "bastions_role_name" {
  value = "${aws_iam_role.bastions-resolversgroup-com.name}"
}

output "cluster_name" {
  value = "resolversgroup.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-eu-west-1a-masters-resolversgroup-com.id}", "${aws_autoscaling_group.master-eu-west-1b-masters-resolversgroup-com.id}", "${aws_autoscaling_group.master-eu-west-1c-masters-resolversgroup-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-resolversgroup-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-resolversgroup-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-resolversgroup-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-resolversgroup-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-resolversgroup-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.eu-west-1a-resolversgroup-com.id}", "${aws_subnet.eu-west-1b-resolversgroup-com.id}", "${aws_subnet.eu-west-1c-resolversgroup-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-resolversgroup-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-resolversgroup-com.name}"
}

output "region" {
  value = "eu-west-1"
}

output "route_table_private-eu-west-1a_id" {
  value = "${aws_route_table.private-eu-west-1a-resolversgroup-com.id}"
}

output "route_table_private-eu-west-1b_id" {
  value = "${aws_route_table.private-eu-west-1b-resolversgroup-com.id}"
}

output "route_table_private-eu-west-1c_id" {
  value = "${aws_route_table.private-eu-west-1c-resolversgroup-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.resolversgroup-com.id}"
}

output "subnet_eu-west-1a_id" {
  value = "${aws_subnet.eu-west-1a-resolversgroup-com.id}"
}

output "subnet_eu-west-1b_id" {
  value = "${aws_subnet.eu-west-1b-resolversgroup-com.id}"
}

output "subnet_eu-west-1c_id" {
  value = "${aws_subnet.eu-west-1c-resolversgroup-com.id}"
}

output "subnet_utility-eu-west-1a_id" {
  value = "${aws_subnet.utility-eu-west-1a-resolversgroup-com.id}"
}

output "subnet_utility-eu-west-1b_id" {
  value = "${aws_subnet.utility-eu-west-1b-resolversgroup-com.id}"
}

output "subnet_utility-eu-west-1c_id" {
  value = "${aws_subnet.utility-eu-west-1c-resolversgroup-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.resolversgroup-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.resolversgroup-com.id}"
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_autoscaling_attachment" "bastions-resolversgroup-com" {
  elb                    = "${aws_elb.bastion-resolversgroup-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-resolversgroup-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-resolversgroup-com" {
  elb                    = "${aws_elb.api-resolversgroup-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-resolversgroup-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-resolversgroup-com" {
  elb                    = "${aws_elb.api-resolversgroup-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-resolversgroup-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-resolversgroup-com" {
  elb                    = "${aws_elb.api-resolversgroup-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-resolversgroup-com.id}"
}

resource "aws_autoscaling_group" "bastions-resolversgroup-com" {
  name                 = "bastions.resolversgroup.com"
  launch_configuration = "${aws_launch_configuration.bastions-resolversgroup-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.utility-eu-west-1a-resolversgroup-com.id}", "${aws_subnet.utility-eu-west-1b-resolversgroup-com.id}", "${aws_subnet.utility-eu-west-1c-resolversgroup-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "resolversgroup.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "bastions.resolversgroup.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/bastion"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "bastions"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1a-masters-resolversgroup-com" {
  name                 = "master-eu-west-1a.masters.resolversgroup.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1a-masters-resolversgroup-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-resolversgroup-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "resolversgroup.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1a.masters.resolversgroup.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1a"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1b-masters-resolversgroup-com" {
  name                 = "master-eu-west-1b.masters.resolversgroup.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1b-masters-resolversgroup-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1b-resolversgroup-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "resolversgroup.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1b.masters.resolversgroup.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1b"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-eu-west-1c-masters-resolversgroup-com" {
  name                 = "master-eu-west-1c.masters.resolversgroup.com"
  launch_configuration = "${aws_launch_configuration.master-eu-west-1c-masters-resolversgroup-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1c-resolversgroup-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "resolversgroup.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-eu-west-1c.masters.resolversgroup.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-eu-west-1c"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-resolversgroup-com" {
  name                 = "nodes.resolversgroup.com"
  launch_configuration = "${aws_launch_configuration.nodes-resolversgroup-com.id}"
  max_size             = 3
  min_size             = 3
  vpc_zone_identifier  = ["${aws_subnet.eu-west-1a-resolversgroup-com.id}", "${aws_subnet.eu-west-1b-resolversgroup-com.id}", "${aws_subnet.eu-west-1c-resolversgroup-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "resolversgroup.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.resolversgroup.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-resolversgroup-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "a.etcd-events.resolversgroup.com"
    "k8s.io/etcd/events"                       = "a/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-resolversgroup-com" {
  availability_zone = "eu-west-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "a.etcd-main.resolversgroup.com"
    "k8s.io/etcd/main"                         = "a/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-resolversgroup-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "b.etcd-events.resolversgroup.com"
    "k8s.io/etcd/events"                       = "b/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-resolversgroup-com" {
  availability_zone = "eu-west-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "b.etcd-main.resolversgroup.com"
    "k8s.io/etcd/main"                         = "b/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-resolversgroup-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "c.etcd-events.resolversgroup.com"
    "k8s.io/etcd/events"                       = "c/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-resolversgroup-com" {
  availability_zone = "eu-west-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "c.etcd-main.resolversgroup.com"
    "k8s.io/etcd/main"                         = "c/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

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

resource "aws_iam_instance_profile" "bastions-resolversgroup-com" {
  name = "bastions.resolversgroup.com"
  role = "${aws_iam_role.bastions-resolversgroup-com.name}"
}

resource "aws_iam_instance_profile" "masters-resolversgroup-com" {
  name = "masters.resolversgroup.com"
  role = "${aws_iam_role.masters-resolversgroup-com.name}"
}

resource "aws_iam_instance_profile" "nodes-resolversgroup-com" {
  name = "nodes.resolversgroup.com"
  role = "${aws_iam_role.nodes-resolversgroup-com.name}"
}

resource "aws_iam_role" "bastions-resolversgroup-com" {
  name               = "bastions.resolversgroup.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_bastions.resolversgroup.com_policy")}"
}

resource "aws_iam_role" "masters-resolversgroup-com" {
  name               = "masters.resolversgroup.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.resolversgroup.com_policy")}"
}

resource "aws_iam_role" "nodes-resolversgroup-com" {
  name               = "nodes.resolversgroup.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.resolversgroup.com_policy")}"
}

resource "aws_iam_role_policy" "bastions-resolversgroup-com" {
  name   = "bastions.resolversgroup.com"
  role   = "${aws_iam_role.bastions-resolversgroup-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_bastions.resolversgroup.com_policy")}"
}

resource "aws_iam_role_policy" "masters-resolversgroup-com" {
  name   = "masters.resolversgroup.com"
  role   = "${aws_iam_role.masters-resolversgroup-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.resolversgroup.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-resolversgroup-com" {
  name   = "nodes.resolversgroup.com"
  role   = "${aws_iam_role.nodes-resolversgroup-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.resolversgroup.com_policy")}"
}

resource "aws_internet_gateway" "resolversgroup-com" {
  vpc_id = "${aws_vpc.resolversgroup-com.id}"

  tags = {
    KubernetesCluster                          = "resolversgroup.com"
    Name                                       = "resolversgroup.com"
    "kubernetes.io/cluster/resolversgroup.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-resolversgroup-com-8c48560d6bda6f5498df59a0f9515166" {
  key_name   = "kubernetes.resolversgroup.com-8c:48:56:0d:6b:da:6f:54:98:df:59:a0:f9:51:51:66"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.resolversgroup.com-8c48560d6bda6f5498df59a0f9515166_public_key")}"
}

resource "aws_launch_configuration" "bastions-resolversgroup-com" {
  name_prefix                 = "bastions.resolversgroup.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-resolversgroup-com-8c48560d6bda6f5498df59a0f9515166.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.bastions-resolversgroup-com.id}"
  security_groups             = ["${aws_security_group.bastion-resolversgroup-com.id}"]
  associate_public_ip_address = true

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 32
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1a-masters-resolversgroup-com" {
  name_prefix                 = "master-eu-west-1a.masters.resolversgroup.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-resolversgroup-com-8c48560d6bda6f5498df59a0f9515166.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-resolversgroup-com.id}"
  security_groups             = ["${aws_security_group.masters-resolversgroup-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1a.masters.resolversgroup.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1b-masters-resolversgroup-com" {
  name_prefix                 = "master-eu-west-1b.masters.resolversgroup.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-resolversgroup-com-8c48560d6bda6f5498df59a0f9515166.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-resolversgroup-com.id}"
  security_groups             = ["${aws_security_group.masters-resolversgroup-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1b.masters.resolversgroup.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-eu-west-1c-masters-resolversgroup-com" {
  name_prefix                 = "master-eu-west-1c.masters.resolversgroup.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-resolversgroup-com-8c48560d6bda6f5498df59a0f9515166.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-resolversgroup-com.id}"
  security_groups             = ["${aws_security_group.masters-resolversgroup-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-eu-west-1c.masters.resolversgroup.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-resolversgroup-com" {
  name_prefix                 = "nodes.resolversgroup.com-"
  image_id                    = "ami-076731471501960ea"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-resolversgroup-com-8c48560d6bda6f5498df59a0f9515166.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-resolversgroup-com.id}"
  security_groups             = ["${aws_security_group.nodes-resolversgroup-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.resolversgroup.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

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

terraform = {
  required_version = ">= 0.9.3"
}
