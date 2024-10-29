# General settings
region       = "us-east-1" # Specify the AWS region where resources will be created
project_name = "aws-iac"   # Name to tag AWS resources for easy identification

# VPC module settings
vpc_cidr            = "10.0.0.0/16"                  # CIDR block for the VPC
public_subnet_count = 2                              # Number of public subnets
public_subnets_cidr = ["10.0.1.0/24", "10.0.2.0/24"] # CIDR blocks for each public subnet

# EC2 module settings
ami           = "ami-06b21ccaeff8cd686" # Replace with an appropriate AMI ID for your region
instance_type = "t2.micro"              # Instance type, such as t2.micro for free-tier
key_name      = "aws-iac-key-pair"      # Name of an existing AWS key pair for SSH access
