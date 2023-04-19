variable "environments" {
  description = "Name of environments d - dev, t - test, u - uat, p - prod"
  type        = string
}

variable "location-prod" {
  description = "Name of the Azure region"
  type        = string
}

variable "company-name" {
  description = "Name of the company"
  type        = string
}

variable "rg-name" {
  description = "Description of this resource group"
  type        = string
}

variable "vnet-name" {
  description = "Description of the vnet to create"
  type        = string
}

variable "location" {
  description = "The location of the vnet to create. Defaults to the location of the resource group."
  type        = string
  default     = null
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
  #  default     = ["10.0.0.0/16"]
}

variable "location-dr" {
  description = "The location of the vnet to create. Defaults to the location of the resource group."
  type        = string
  default     = null
}

variable "address_space-dr" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
  #  default     = ["10.0.0.0/16"]
}
