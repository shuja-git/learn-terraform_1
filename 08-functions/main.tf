variable "test" {
  default = {
    "catalogue" = {
      "ec2_private_ip" = "172.31.18.179"
    }
    "user"      = {
      "ec2_private_ip" = "172.31.26.165"
    }
  }
}
output "testing" {
  value = var.test["catalogue"]
}