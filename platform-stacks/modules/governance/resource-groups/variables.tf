variable "workload" {
  description = "Workload/Application short name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "tags" {
  description = "Mandatory tag set"
  type        = map(string)
}

variable "enable_prod_locks" {
  description = "Enable RG locks for production"
  type        = bool
  default     = false
}