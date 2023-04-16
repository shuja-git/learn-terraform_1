data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "frontend" {
  count = length(var.instances)
  ami =  data.aws_ami.ami.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]

}
variable "instances" {
  default = [
    "user", "shipping", "payment", "cart", "catalogue"
  ]
}