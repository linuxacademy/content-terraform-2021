variable aws_profile {
  type = string
  description = "The name of the profile to configure for the AWS CLI to provision infrastructure"
  default = "default"
}

variable aws_region {
  type = string
  description = "The name of the designated region to deploy the infrastructure"
  default = "us-east-1"
}


provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}
