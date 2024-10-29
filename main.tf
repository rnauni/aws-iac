provider "aws" {
  region = var.region
}

module "vpc" {
  source              = "./modules/vpc"
  region              = var.region
  name_tag            = var.project_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_count = var.public_subnet_count
  public_subnets_cidr = var.public_subnets_cidr
}

module "ec2" {
  source        = "./modules/ec2"
  region        = var.region
  name_tag      = var.project_name
  ami           = var.ami
  instance_type = var.instance_type
  vpc_id        = module.vpc.vpc_id
  subnet_id     = element(module.vpc.public_subnet_ids, 0)
  key_name      = var.key_name
}
