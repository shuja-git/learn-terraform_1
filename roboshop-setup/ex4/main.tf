module "ec2" {
  for_each = var.instances

  source = "./ec2"
  component = each.value["name"]
  instance_type = each.value["type"]
}

variable "instances" {
  default = {
    catalogue = {
      name = "catalogue"
      type = "t2.micro"
    }
    user = {
      name = "user"
      type = "t2.micro"
    }
  }
}