# Create Security Group - SSH Traffic
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow DEV ssh"

  ingress {
    description      = "Allow DEV ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

# Create Security Group - WEB-Traffic

resource "aws_security_group" "allow_web_traffice" {
  name        = "allow_WEB"
  description = "Allow DEV web traffic"

  ingress {
    description      = "Allow web Traffice"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}
