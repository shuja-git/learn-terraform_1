resource "aws_instance" "ec2" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = var.instance_type == "" ? "t2.micro" : var.instance_type
}
variable "instance_type" {}
