# AWS region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

# AWS account id
variable "aws_account_id" {
  description = "AWS account ID (numeric)"
  type        = string
  default     = "597406702314"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

# Updated CIDR ranges to avoid overlap
variable "public_subnet_cidrs" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.20.0/24"]
}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.30.0/24", "10.0.40.0/24"]
}

variable "availability_zones" {
  description = "Availability zones to use"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

variable "ecs_cluster_name" {
  default = "ecs_cluster"
}

variable "task_family" {
  default = "my_app"
}

variable "container_image" {
  default = "nginx:latest"
}

variable "container_port" {
  default = 80
}

variable "task_cpu" {
  default = 256
}

variable "task_memory" {
  default = 512
}
