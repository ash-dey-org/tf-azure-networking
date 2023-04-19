module "vnet" {
  source = "./modules/vnet"

  env           = var.environments
  location      = var.location
  company-name  = var.company-name
  address_space = var.address_space
  rg-name       = var.rg-name
  vnet-name     = var.vnet-name
}

module "vnet-dr" {
  source = "./modules/vnet"

  env           = var.environments
  location      = var.location-dr
  company-name  = var.company-name
  address_space = var.address_space-dr
  rg-name       = var.rg-name
  vnet-name     = var.vnet-name
}
