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

