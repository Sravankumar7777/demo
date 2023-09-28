variable "rg-name" {
    type= string
    description = "Resource group name"
}
variable "location-name" {
    type = string
    description = "Location name"
}

variable "storagename"{
    type = string
    description = "storage account name"
}
variable "strgcontname" {
   type = string
   description = " name of container"
}
variable "blobfilename" {
    type = string
    description = "name of blob"  
}
variable "dfname" {
    type = string
    description = "name of datafactory" 
}
 variable "cosmosdbname" {
   type = string
   description = "cosmosdb account name"
 }
 variable "cosmos-database" {
    type = string
    description = "cosmosdb database name"
 }
 variable "cosmoscont-name" {
    type = string
    description = "cosmosdb container name"
   
 }


