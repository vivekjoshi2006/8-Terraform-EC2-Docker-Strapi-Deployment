resource "aws_security_group" "strapi_sg" {
  name        = "strapi_sg_vivek"
  description = "Allow Strapi and SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "strapi_server" {
  ami           = "ami-0c7217cdde317cfec" # Amazon Linux 2023
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.strapi_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              dnf update -y
              dnf install -y docker
              systemctl start docker
              systemctl enable dockerub
              docker run -d -p 1337:1337 vivekjoshi2006/strapi-aws:latest
              EOF

  tags = {
    Name = "Strapi-Deploy-Vivek"
  }
}