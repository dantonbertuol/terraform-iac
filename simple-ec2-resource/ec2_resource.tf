provider "aws" {
  region  = "us-east-2"  
}

resource "aws_instance" "simple-ec2" {
  ami           = "ami-0a0d9cf81c479446a"  # AMI na AWS
  instance_type = "t2.micro"

  tags = {
    Name = "simple-ec2-terraform"
  }
}
