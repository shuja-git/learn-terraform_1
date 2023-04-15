resource "aws_instance" "frontend" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "frontend"
  }
}
resource "aws_instance" "cart" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "cart"
  }
}
resource "aws_instance" "catalogue" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "catalogue"
  }
}
resource "aws_instance" "shipping" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "shipping"
  }
}
resource "aws_instance" "user" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "user"
  }
}
resource "aws_instance" "payment" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "payment"
  }
}
resource "aws_instance" "mongodb" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "mongodb"
  }
}
resource "aws_instance" "mysql" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "mysql"
  }
}
resource "aws_instance" "rabbitmq" {
  ami = "ami-0089b8e98cd95257d"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0f814c32290173c7c"]
  tags = {
    Name = "rabbitmq"
  }
}
