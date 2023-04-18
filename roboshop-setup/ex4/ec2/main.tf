data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "ec2" {
  ami =  data.aws_ami.ami.image_id    #"ami-0089b8e98cd95257d"
  instance_type = var.instance_type
  vpc_security_group_ids = [var.sg_id]
  tags = {
    Name = var.component
  }
}
output "ec2_private_ip" {
  value = aws_instance.ec2.private_ip
}

variable "component" {}
variable "instance_type" {}
variable "sg_id" {}