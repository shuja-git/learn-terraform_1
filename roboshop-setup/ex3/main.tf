data "aws_ami" "ami" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

resource "aws_instance" "instances" {
  for_each = var.instance
  ami =  data.aws_ami.ami.image_id
  instance_type = each.value["type"]
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]

  tags = {
    Name = each.value["name"]
  }
}


#Mature code
variable "instance" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t2.micro"
    }
    user = {
      name = "user"
      type = "t3.micro"
    }
  }
}
output "ec2" {
  value = [for k, v in aws_instance.instances : "${k} - ${v.public_ip}"]
}


#--------------------------------------
#refering immature code
#resource "aws_instance" "frontend" {
#  count = length(var.names)
#  ami =  data.aws_ami.ami.image_id
#  instance_type =  var.types[count.index]
#  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
#
#  tags = {
#    Name = var.names[count.index]
#  }
#}
#Refering little mature code
#resource "aws_instance" "frontend" {
#  count = length(var.demo)
#  ami =  data.aws_ami.ami.image_id
#  instance_type =  var.demo[count.index]["type"]
#  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
#
#  tags = {
#    Name = var.demo[count.index]["name"]
#  }
#}
#Little matrue code
#variable "demo" {
#  default = [
#    {
#      name = "cart"
#      type = "t3.micro"
#    },
#    {
#      name = "catalogue"
#      type = "t2.micro"
#    }
#  ]
#}

#--------------------------------
#Immature code
#variable "names" {
#  default = ["catalogue","cart"]
#}
#variable "types" {
#  default = ["t2.micro", "t3.micro"]
#}
#--------------------------------------


