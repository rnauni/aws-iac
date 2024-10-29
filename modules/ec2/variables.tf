variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "name_tag" {
  description = "Name of the EC2 resources"
  type        = string
}

variable "ami" {
  description = "AMI ID for the instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "vpc_id" {
  description = "VPC ID where EC2 is deployed"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "public_key" {
  description = "Optional public key content for key pair"
  type        = string
  default     = null
}
