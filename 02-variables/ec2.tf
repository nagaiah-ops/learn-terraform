resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.web.id]

  tags = var.ec2_tags
}

resource "aws_security_group" "web" {
  name = "web"
  description = "Allow TLS inbound and all outbound traffic"

  ingress {
    from_port        = var.from_port
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  tags = {
    Name = "roboshop-web"
  }
}
