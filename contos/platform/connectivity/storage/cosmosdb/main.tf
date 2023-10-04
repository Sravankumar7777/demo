resource "azurerm_cosmosdb_account" "accunt"  {
  name                = var.cosmosdbname
  resource_group_name = var.rg-name
  location            = var.location
  offer_type          = "Standard"
  kind                ="GlobalDocumentDB"

  consistency_policy {
     consistency_level  ="Session"
  }
  geo_location {
    location          = var.location
    failover_priority =0
  }

}



resource "azurerm_cosmosdb_sql_database" "datab1" {
  name                = var.cosmos-database
  resource_group_name = var.rg-name
 // location            = var.location
  account_name        = azurerm_cosmosdb_account.accunt.name

}

resource "azurerm_cosmosdb_sql_container" "contcosmos" {
  name                  = var.cosmoscont-name
  resource_group_name   = var.rg-name
 // location              = var.location
  account_name          = azurerm_cosmosdb_account.accunt.name
  database_name         = azurerm_cosmosdb_sql_database.datab1.name
  partition_key_path    = "/id"
  partition_key_version = 1
  throughput            = 400

}