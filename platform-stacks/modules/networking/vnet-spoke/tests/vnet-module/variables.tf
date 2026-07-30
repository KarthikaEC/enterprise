variable "workload_name" {
  description = "Workload short name."
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

variable "resource_group_name" {
  description = "Resource group for networking resources."
  type        = string
}

variable "address_space" {
  description = "Address space for the spoke VNet."
  type        = list(string)
}

variable "tags" {
  description = "Tags applied to the networking resources."
  type        = map(string)
  default     = {}
}