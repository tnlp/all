provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-2"
}
 
resource "aws_instance" "terraform-20210925" {
  ami           = "ami-00dfe2c7ce89a450b"
  instance_type = "t2.micro"
  tags = {
    "Terraform" : "true"
  }
}

resource "aws_s3_bucket" "s3_bbucket" {
  bucket           = "terraform20210925"
  acl = "private"
  tags = {
    "Terraform" : "true"
  }
}
