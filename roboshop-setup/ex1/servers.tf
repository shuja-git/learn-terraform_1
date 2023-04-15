resource "aws_instance" "frontend" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "frontend-dev.shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "cart" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "cart-dev.shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "catalogue" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "catalogue-dev.shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}
resource "aws_instance" "shipping" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "shipping-dev.shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "user" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "user-dev.shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}
resource "aws_instance" "payment" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "payment-dev.shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}
resource "aws_instance" "mongodb" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "mongodb-dev.shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_instance" "mysql" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "mysql-dev.shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_instance" "rabbitmq" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "rabbitmq-dev.shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
resource "aws_instance" "redis" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z10218511FGAD8YC6L1HI"
  name    = "redis-dev.shujadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
