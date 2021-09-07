provider "aws" {
  region = "ap-south-1"
  profile = "terraform"
}

#launch instance
resource "aws_instance" "os1" {
  ami           = "ami-010aff33ed5991201"
  instance_type = "t2.micro"
  security_groups =[ "foransible" ]
  key_name = "abkey"
  tags = {
    Name = "kubemaster"
  }
}
