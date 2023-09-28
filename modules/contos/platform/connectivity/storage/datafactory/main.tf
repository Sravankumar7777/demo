
resource "azurerm_resource_group" "rg" {
  name     = var.rg-name
  location = var.location-name
}


resource "azurerm_storage_account" "strg" {
  name                = var.storagename
  resource_group_name = azurerm_resource_group.rg.name
location                 = azurerm_resource_group.rg.location
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

resource "azurerm_data_factory" "df" {
  name                = var.dfname
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_cosmosdb_account" "accunt"  {
  name                = var.cosmosdbname
  resource_group_name = azurerm_resource_group.rg.name
  location            =  azurerm_resource_group.rg.location
  offer_type          = "Standard"
  kind                ="GlobalDocumentDB"

  consistency_policy {
     consistency_level  ="Session"
  }
  geo_location {
    location          = azurerm_resource_group.rg.location
    failover_priority =0
  }

}



resource "azurerm_cosmosdb_sql_database" "datab1" {
  name                = var.cosmos-database
  resource_group_name = azurerm_resource_group.rg.name
  account_name        = azurerm_cosmosdb_account.accunt.name

}

resource "azurerm_cosmosdb_sql_container" "contcosmos" {
  name                  = var.cosmoscont-name
  resource_group_name   = azurerm_resource_group.rg.name
  account_name          = azurerm_cosmosdb_account.accunt.name
  database_name         = azurerm_cosmosdb_sql_database.datab1.name
  partition_key_path    = "/id"
  partition_key_version = 1
  throughput            = 400

}

