#resource "aws_route53_record" "record" {
#  zone_id = "Z10218511FGAD8YC6L1HI"
#  name    = "${var.component}-dev.shujadevops.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.ec2.private_ip]
#}



variable "component" {}