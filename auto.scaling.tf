resource "aws_autoscaling_attachment" "bastions-acirrustech-com" {
  elb                    = "${aws_elb.bastion-acirrustech-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.bastions-acirrustech-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1a-masters-acirrustech-com" {
  elb                    = "${aws_elb.api-acirrustech-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1a-masters-acirrustech-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1b-masters-acirrustech-com" {
  elb                    = "${aws_elb.api-acirrustech-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1b-masters-acirrustech-com.id}"
}

resource "aws_autoscaling_attachment" "master-eu-west-1c-masters-acirrustech-com" {
  elb                    = "${aws_elb.api-acirrustech-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-eu-west-1c-masters-acirrustech-com.id}"
}

resource "aws_autoscaling_gr