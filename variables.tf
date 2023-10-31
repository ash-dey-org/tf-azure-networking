variable "environments" {
  description = "Name of environments d - dev, t - test, u - uat, p - prod"
  type        = string
  default     = "p"
}

variable "company-name" {
  description = "Name of the company"
  type        = string
  default     = "sa"
}

variable "region" {
  description = "Primary region"
  default     = "auea"
}

variable "region-dr" {
  description = "DR region"
  type        = string
  default     = "ause"
}

variable "vnets" {
  type = list(object({
    name = string
    # resource_group_name = string
    # location        = string
    address_space = list(string)
    extra_tags    = map(string)
  }))

  default = []
}

/*
variable "vnets-dr" {
  type = list(object({
    name        = string
    resource_group_name = string
    location        = string
    address_space = list(string)
    tags  = map(string)
  }))

  default = []
}

*/
variable "common_tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(string)

  default = {
    APP    = "core-network"
    OWNER  = "ICT"
    DEPLOY = "Terraform"
  }
}

variable "extra_tags" {
  description = "Extra tags specific to environment"
  type        = map(string)
  default     = null
}
