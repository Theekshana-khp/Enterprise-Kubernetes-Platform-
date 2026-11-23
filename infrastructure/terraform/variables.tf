variable "aws_region" {
  type    = string
  default = "us-east-1"
}
variable "project_name" {
  type    = string
  default = "orbit"
}
variable "environment" {
  type    = string
  default = "dev"
}
variable "cluster_name" {
  type    = string
  default = "orbit-eks-dev"
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "admin_cidr" {
  type        = string
  description = "Your public IP in CIDR notation, for example 203.0.113.10/32."
  validation {
    condition     = can(cidrhost(var.admin_cidr, 0))
    error_message = "admin_cidr must be a valid CIDR block."
  }
}
variable "node_instance_types" {
  type    = list(string)
  default = ["t3.medium"]
}
