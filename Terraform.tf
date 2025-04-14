terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "VPC_from_a_GOV" {
  cidr_block = "10.0.0.0/16"
}

# Create a subnet
resource "aws_subnet" "subnet_from_a_GOV" {
  vpc_id     = aws_vpc.VPC_from_a_GOV.id
  cidr_block = "237.84.2.178/24"
}

