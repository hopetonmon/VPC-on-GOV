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
  sensitive = true #Mark as sensitive to protect the value in the state file
}


variable "TERRY_ACCESS_KEY" {
  type        = string
  sensitive = true #Mark as sensitive to protect the value in the state file
}

variable "TERRY_SECRET_KEY" {
  type        = string
  sensitive = true #Mark as sensitive to protect the value in the state file
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

tags = {
  Name = "VPC_from_a_GOV"
}
}