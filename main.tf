module "vnet" {
    source = "./modules/vnet"

    for_each = toset(var.environments)

    env = each.key
    location = var.location-prod
    company-name = var.company-name
    address_space = var.address_space
    rg-name = var.rg-name
    vnet-name = var.vnet-name
}
