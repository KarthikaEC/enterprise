variable "environment" {
  type = string
}

variable "project_name" {
  type = string
}

variable "owner_email" {
  type = string
}

variable "cost_centre" {
  type = string
}

variable "data_classification" {
  type = string
}

variable "workload_name" {
  type = string
}

variable "location" {
  type = string
}

variable "additional_tags" {
  type    = map(string)
  default = {}
}

