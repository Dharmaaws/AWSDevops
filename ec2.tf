resource "aws_instance" "web-server" {
  ami= "ami-01eb4eefd88522422"
  instance_type = "t2.micro"
  key_name = "Testing"
  security_groups = ["Test1"]
  tags = {
    name = "linux"
    env = "Dev"
  }
}

