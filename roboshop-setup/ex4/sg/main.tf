resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "allow all security group"

  ingress {
    description      = "allow all security group"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "allow_tls"
  }
}

output "sg" {
  value = aws_security_group.allow_tls
}