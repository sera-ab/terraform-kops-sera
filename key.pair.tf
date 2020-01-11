resource "aws_key_pair" "kubernetes-resolversgroup-com-8c48560d6bda6f5498df59a0f9515166" {
  key_name   = "kubernetes.resolversgroup.com-8c:48:56:0d:6b:da:6f:54:98:df:59:a0:f9:51:51:66"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.resolversgroup.com-8c48560d6bda6f5498df59a0f9515166_public_key")}"
}

