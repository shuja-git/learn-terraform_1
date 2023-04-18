resource "aws_security_group" "security_group_1" {
  name        = "security_group_1"
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
    Name = "security_group_1"
  }
}

output "sg_id" {
  value = aws_security_group.security_group_1.id
}