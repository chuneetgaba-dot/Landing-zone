rgs = {
  rg1 = {
    name     = "rg-dev"
    location = "centralindia"
  }

  rg2 = {
    name     = "rg-prod"
    location = "westindia"
  }

  rg3 = {
    name     = "rg-qa"
    location = "centralindia"
  }
}

virtual_networks = {
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

snets = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-dev"
    virtual_network_name = "vnet-dev1"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-dev"
    virtual_network_name = "vnet-dev1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}