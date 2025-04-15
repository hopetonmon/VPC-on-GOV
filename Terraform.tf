terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


#Variables
variable "aws_region" {
  type        = string
  default     = env("AWS_REGION")
}


variable "access_key" {
  type        = string
  default     = env("TERRY_ACCESS_KEY")
  
}

variable "secret_key" {
  type        = string
  default     = env("TERRY_SECRET_KEY")
}


# Configure the AWS Provider
provider "aws" {
  region = "var.aws_region"
}

# Create a VPC
resource "aws_vpc" "VPC_from_a_GOV" {
  cidr_block = "10.0.0.0/16"
}

