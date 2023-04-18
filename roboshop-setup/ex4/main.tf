module "ec2" {
  for_each = var.instances

  source = "./ec2"
  component = each.value["name"]
  instance_type = each.value["type"]
  sg_id = module.sg.sg_id
}

module "sg" {
  source = "./sg"
}

module "route53" {
  source = "./route53"
}

output "ec2_out" {
  value = module.ec2
}

output "sg_id" {
  value = module.sg
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