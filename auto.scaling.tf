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
  max_size             = "${var.max_size}"
  min_size             = "${var.min_size}"
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

