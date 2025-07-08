# As per this variables.tf file, we define the variables used in the Terraform configuration for creating AWS infrastructure
# with default values which will be used when we were not passing the variable details from example.tfvars file.

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.100.0.0/16"
  description = "value for VPC CIDR block"
}

variable "subnet_overall_details" {
  type = list(object({
    name = string
    cidr = string
    az   = string
  }))
  default = [{
    name = "web-1"
    cidr = "10.100.0.0/24"
    az   = "us-east-1a"
    },
    {
      name = "web-2"
      cidr = "10.100.1.0/24"
      az   = "us-east-1b"
  }]
  description = "List of subnet details including name, CIDR, and availability zone"
}
