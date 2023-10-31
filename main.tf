data "azurerm_resource_group" "rg" {
  name = "${var.environments}-${var.region}-${var.company-name}-rg-networking"
  # location = var.location
}

data "azurerm_resource_group" "rg-dr" {
  name = "${var.environments}-${var.region-dr}-${var.company-name}-rg-networking"
  # location = var.location
}


module "vnet" {
  source = "./modules/vnet"

  for_each = {
    for index, vnet in var.vnets :
    vnet.name => vnet
  }

  vnet-name     = each.value.name
  rg-name       = data.azurerm_resource_group.rg.name
  location      = data.azurerm_resource_group.rg.location
  address_space = each.value.address_space
  tags          = merge(var.common_tags, each.value.extra_tags)

}

