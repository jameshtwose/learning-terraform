terraform {
  required_version = ">= 1.2.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}
provider "aws" {
  region = "eu-central-1"
}
resource "aws_instance" "app_server" {
  ami           = "ami-03cfa605101bc71bf"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}