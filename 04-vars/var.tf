#variable "sample" {
#  default = "Hello World"
#}
#output "sample" {
#  value = var.sample
#}
#variable "sample1" {}
#output "sample1" {
#  value = var.sample1
#}
#variable "cli" {}
#output "cli" {
#  value = var.cli
#}
#variable "env" {}
#output "environment_variable" {
#  value = var.env
#}
#variable "sample2" {
#  default = "sample2 value"
#}
#variable "sample3_list" {
#  default = [
#    "Hello",
#    "World",
#    100,
#    true
#  ]
#}
#variable "sample_map" {
#  default = {
#    string = "Helloooo",
#    number = 100,
#    boolean = true
#  }
#}
#output "sample2" {
#  value = "The single value is ${var.sample2}"
#}
#output "printing_list" {
#  value = "The first value of list is ${var.sample3_list[0]}"
#}
#output "printing_map" {
#  value = "The boolean value is ${var.sample_map["boolean"]}"
#}

variable "d1" {
  default = [
    {
      course_name = "devops"
      trainer_name = "shuja"
    },
    {
      course_name = "aws"
      trainer_name = "Mohd"
    }
  ]
}
output "course" {
  value = var.d1.*.course_name
}