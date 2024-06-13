# Create an ec2 instance on aws

# terraform provider Block

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Credentials hard coding is not the best practice

provider "aws" {
  region     = "us-east-1"
  access_key = "your-accesskey"
  secret_key = "your-secretkey"
}


# Actual block that is assign to create an ec2-instance
resource "aws_instance" "my-instance"{
    ami = "ami-08a0d1e16fc3f61ea"
    instance_type = "t2.micro"
    key_name = "your-key-name"
}

