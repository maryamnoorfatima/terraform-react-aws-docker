variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
}

variable "docker_message" {
  description = "Message to display in the HTML file served by NGINX"
  type        = string
}

variable "key_name" {
  description = "EC2 Key pair name"
  type        = string
}
