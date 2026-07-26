variable "environment" {
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

