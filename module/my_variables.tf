variable "env" {
  description = "This is environment for aws infra"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for launching EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 (e.g., t3.micro)"
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to provision"
  type        = number
}