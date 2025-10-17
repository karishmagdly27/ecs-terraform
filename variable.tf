# AWS region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-2"
}

# AWS account id (used for IAM conditions if needed)
variable "aws_account_id" {
  description = "AWS account ID (numeric). Replace with your account id."
  type        = string
  default     = "597406702314"
}

# VPC and subnet CIDR blocks
variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

# Availability zones to use (us-east-2)
variable "availability_zones" {
  description = "Availability zones to place subnets in. Use us-east-2.*"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}

# ECS / Fargate settings
variable "ecs_cluster_name" {
  description = "ECS cluster name"
  type        = string
  default     = "ecs_cluster"
}

variable "task_family" {
  description = "ECS task family name"
  type        = string
  default     = "my_app"
}

variable "container_image" {
  description = "Container image to use for the task"
  type        = string
  default     = "nginx:latest"
}

variable "container_port" {
  description = "Port exposed by the container"
  type        = number
  default     = 80
}

variable "task_cpu" {
  description = "CPU units for Fargate task"
  type        = number
  default     = 256
}

variable "task_memory" {
  description = "Memory (MB) for Fargate task"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Number of desired ECS tasks"
  type        = number
  default     = 1
}

# Terraform backend
variable "tfstate_s3_bucket" {
  description = "S3 bucket name for Terraform remote state"
  type        = string
  default     = "terraform-ecs-state-bucket"
}

variable "tfstate_s3_key" {
  description = "S3 key for Terraform state file"
  type        = string
  default     = "ecs/terraform.tfstate"
}

variable "dynamodb_table" {
  description = "DynamoDB table name to use for state locking"
  type        = string
  default     = "terraform-locks"
}
