vnets = {
  vnet1 = {
    name                = "vnet-dev1"
    location            = "central india"
    resource_group_name = "rg-dev"
    address_space       = ["10.0.0.0/16"]
  }

  vnet2 = {
    name                = "vnet-prod"
    location            = "centralindia"
    resource_group_name = "rg-prod"
    address_space       = ["10.1.0.0/16"]
  }

  vnet3 = {
    name                = "vnet-qa"
    location            = "centralindia"
    resource_group_name = "rg-qa"
    address_space       = ["10.2.0.0/16"]
  }
}