terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


#Variable
variable "aws_region" {
  type        = string
  default     = env("AWS_REGION")
}


# Configure the AWS Provider
provider "aws" {
  region = "var.aws_region"
}

# Create a VPC
resource "aws_vpc" "VPC_from_a_GOV" {
  cidr_block = "10.0.0.0/16"
}

