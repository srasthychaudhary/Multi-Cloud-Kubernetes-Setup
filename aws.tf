provider "aws" {
  region = "ap-south-1"
  profile = "terraform"
}

#launch instance
resource "aws_instance" "os1" {
  ami           = "ami-00000000"
  instance_type = "t2.micro"
  security_groups =[ "foransible" ]
  key_name = "xxxxxx"
  tags = {
    Name = "kubemaster"
  }
}
