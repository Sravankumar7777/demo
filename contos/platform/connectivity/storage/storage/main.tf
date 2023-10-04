resource "azurerm_storage_account" "strg" {
  name                = var.storagename
  resource_group_name = var.rg-name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  
} 

resource "azurerm_storage_container" "strgcont" {
  name                  = var.strgcontname
  storage_account_name  = azurerm_storage_account.strg.name
  container_access_type = "container"
}
resource "azurerm_storage_blob" "strgblob" {
  name                   = var.blobfilename
  storage_account_name   = azurerm_storage_account.strg.name
  storage_container_name = azurerm_storage_container.strgcont.name
  type                   = "Block"
  source                 = ""
}