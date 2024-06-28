variable "aws_region" {
  description = "The AWS region to deploy to"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "db_username" {
  description = "The username for the RDS database"
}

variable "db_password" {
  description = "The password for the RDS database"
}

variable "repository_name" {
  description = "The name of the ECR repository"
  default     = "emotion-tracker-backend"
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  default     = "emotion-tracker-cluster"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  default     = "emotion-tracker-bucket"
}

variable "app_name" {
  description = "The name of the Cognito app"
  default     = "emotion-tracker"
}
