resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet-name
  address_space       = var.vnet-address-space
  location            = var.location
  resource_group_name = var.resouce-group-name
} 

resource "azurerm_subnet" "vnet-subnet" {
  name                 = var.subnet-name
  resource_group_name  = var.resouce-group-name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet-address-prefix
}