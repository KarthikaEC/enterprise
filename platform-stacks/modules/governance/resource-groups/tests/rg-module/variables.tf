variable "workload_name" {
  description = "Name of the workload."
  type        = string
}

variable "environment" {
  description = "Deployment environment."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "project_name" {
  description = "Project name."
  type        = string
}

variable "owner_email" {
  description = "Owner email address."
  type        = string
}

variable "cost_centre" {
  description = "Cost centre."
  type        = string
}

variable "data_classification" {
  description = "Data classification."
  type        = string
}

variable "additional_tags" {
  description = "Additional tags to apply."
  type        = map(string)
  default     = {}
}