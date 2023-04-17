data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "ec2" {
  ami =  data.aws_ami.ami.image_id    #"ami-0089b8e98cd95257d"
  instance_type = var.instance_type
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = var.component
  }
}
resource "aws_route53_record" "record" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "${var.component}-dev.shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}
variable "component" {}
variable "instance_type" {}