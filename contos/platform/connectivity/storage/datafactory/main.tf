resource "azurerm_data_factory" "df" {
  name                = var.dfname
  location            = var.location
  resource_group_name = var.rg-name
}