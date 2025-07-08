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

variable "subnet_cidrs" {
  type = list(string)
  default = [
    "10.100.0.0/24",
    "10.100.1.0/24",
    "10.100.2.0/24",
    "10.100.3.0/24"
  ]
  description = "List of CIDR blocks for subnets"
}

variable "subnet_azs" {
  type = list(string)
  default = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1a",
    "us-east-1b"
  ]
  description = "List of availability zones for subnets"
}

variable "subnet_name" {
  type        = list(string)
  default     = ["web-1", "web-2", "db-1", "db-2"]
  description = "List of tag names for subnets"
}