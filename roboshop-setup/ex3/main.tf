data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

#resource "aws_instance" "frontend" {
#  for_each = var.names
#  ami =  data.aws_ami.ami.image_id
#  instance_type = each.value["type"]
#  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
#
#  tags = {
#    Name = each.value["name"]
#  }
#}

resource "aws_instance" "frontend" {
  count = length(var.names)
  ami =  data.aws_ami.ami.image_id
  instance_type =  var.types[count.index]
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]

  tags = {
    Name = var.names[count.index]
  }
}


#Immature code
variable "names" {
  default = ["catalogue","cart"]
}
variable "types" {
  default = ["t2.micro", "t3.micro"]
}

#variable "instances" {
#  default = {
#    catalogue = {
#      name = "catalogue"
#      type = "t2.micro"
#    }
#    user = {
#      name = "user"
#      type = "t3.micro"
#    }
#  }
#}
