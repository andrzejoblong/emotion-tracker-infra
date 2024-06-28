provider "aws" {
  region = var.aws_region
}

# Example module calls
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

module "rds" {
  source = "./modules/rds"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  db_username = var.db_username
  db_password = var.db_password
}

module "ecr" {
  source = "./modules/ecr"
  repository_name = var.repository_name
}

module "ecs" {
  source = "./modules/ecs"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  cluster_name = var.cluster_name
  repository_url = module.ecr.repository_url
}

module "s3" {
  source = "./modules/s3"
  bucket_name = var.bucket_name
}

module "cognito" {
  source = "./modules/cognito"
  app_name = var.app_name
}
