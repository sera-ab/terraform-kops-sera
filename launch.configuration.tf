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
