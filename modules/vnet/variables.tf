variable "vnet-name" {
  description = "Description of the vnet to create"
  type        = string
}

variable "rg-name" {
  description = "Description of this resource group"
  type        = string
}

variable "location" {
  description = "Name of the Azure region"
  type        = string
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
  #  default     = ["10.0.0.0/16"]
}

variable "tags" {
  description = "The tags to associate with your network and subnets."
  type        = map(string)
  default     = null
}
