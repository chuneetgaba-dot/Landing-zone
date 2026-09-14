module "resource_group" {
  source          = "../child_modules/azurerm_resource_group"
  resource_groups = var.rgs

}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../child_modules/azurerm_virtual_network"
  vnets      = var.virtual_networks
}

module "subnet" {
  depends_on = [module.virtual_network]
  source     = "../child_modules/azurerm_subnet"
  subnets    = var.snets
}