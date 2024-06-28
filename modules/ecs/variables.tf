variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "subnet_ids" {
  description = "List of IDs of the subnets"
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
}

variable "repository_url" {
  description = "URL of the ECR repository"
}
