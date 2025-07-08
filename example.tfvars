# The subnet_overall_details variable contains a list of objects, each representing a subnet with its name, CIDR block, and availability zone.
# This variable is used to create multiple subnets in the specified VPC.
# It will be used only when we declare var-file=example.tfvars in the command line while terraform apply.
# If we declare var-file=example.tfvars, then the values from this file will be used from variables.tf file.

region   = "ap-south-1"
vpc_cidr = "192.168.0.0/16"

subnet_overall_details = [{
  name = "web-1"
  cidr = "192.168.0.0/24"
  az   = "ap-south-1a"
  },
  {
    name = "web-2"
    cidr = "192.168.1.0/24"
    az   = "ap-south-1b"
  },
  {
    name = "db-1"
    cidr = "192.168.2.0/24"
    az   = "ap-south-1a"
  },
  {
    name = "db-2"
    cidr = "192.168.3.0/24"
    az   = "ap-south-1b"
  },
  {
    name = "app-1"
    cidr = "192.168.4.0/24"
    az   = "ap-south-1a"
  },
  {
    name = "app-2"
    cidr = "192.168.5.0/24"
    az   = "ap-south-1b"
  }
]
