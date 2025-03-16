resource "aws_instance" "web-server" {
  ami= "ami-01eb4eefd88522422"
  instance_type = "t2.micro"
  key_name = "Testing"
  security_groups = ["Test1"]
  tags = {
    name = "linux"
    env = "prod"
  }
}
resource "aws_ebs_volume" "Volume" {
  availability_zone = "us-west-1a"
  size = 1

  tags = {
    name = "1GB Added"
  }
}

resource "aws_volume_attachment" "ebs_attach" {
  device_name = "/dev/xvdf"
  instance_id = "i-094b8ef22333e564e"
  volume_id   = "vol-089457ee9ed5f8e11"
}