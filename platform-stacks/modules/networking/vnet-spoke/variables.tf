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
  description = "Resource group where spoke networking resources are deployed."
  type        = string
}

variable "address_space" {
  description = "Address space assigned to the spoke VNet."
  type        = list(string)
}

variable "tags" {
  description = "Tags applied to networking resources."
  type        = map(string)
  default     = {}
}

variable "subnets" {
  description = "Configuration of subnets within the spoke VNet."

  type = map(object({
    cidr = string

    delegation = optional(object({
      name         = string
      service_name = string
      actions      = optional(list(string), [])
    }))

    pe_policy = optional(string, "Enabled")
  }))
}