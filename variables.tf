variable "region" {
  description = "The AWS region to deploy resources in."
  type = string
  default     = "eu-west-2"
}

variable "project_name" {
  description = "The name of the project."
  type        = string
  default     = "security-monitoring"
}

variable "environment" {
  description = "The environment for the deployment (e.g., dev, staging, prod)."
  type        = string
  default     = "dev"
}

variable "alert_email" {
  description = "Where GuardDuty alerts are sent."
  type        = string
}

variable "project" {
  type    = string
  default = "security-monitoring"
}