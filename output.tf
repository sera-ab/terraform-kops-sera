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



