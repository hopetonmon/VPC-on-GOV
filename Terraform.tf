terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


#Variables
variable "AWS_REGION" {
  type        = string
}


variable "TERRY_ACCESS_KEY" {
  type        = string
}

variable "TERRY_SECRET_KEY" {
  type        = string
}


# Configure the AWS Provider w/ Credentials
provider "aws" {
  access_key = var.TERRY_ACCESS_KEY
  secret_key = var.TERRY_SECRET_KEY
  region = var.AWS_REGION
}

# Create a VPC
resource "aws_vpc" "VPC_from_a_GOV" {
  cidr_block = "10.0.0.0/16"
}
