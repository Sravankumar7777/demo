variable "managementgroup" {
  type = string

}
variable "childgroupA0" {
  type = string

}
variable "childgroupB0" {
  type = string

}
variable "childgroupB1" {
  type = string

}
variable "childgroupB3" {
  type = string

}
variable "childgroupB2" {
  type = string

}
variable "childgroupC0" {
  type = string

}
variable "childgroupD0" {
  type = string

}
variable "childgroupD1" {
  type = string

}
variable "childgroupD2" {
  type = string

}

variable "rg-name" {
    type= string
    description = "Resource group name"
}
variable "location" {
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
variable "key_vault_name" {



    description = "name of your keyvault"



    type = string



}



variable "soft_delete_retention_days" {



    description = "soft delete retention days"



    type = number



}



variable "purge_protection_enabled" {



    description = "enabled"



    type = bool



}



variable "sku_name" {



    description = "name of your sku"



    type = string



}



variable "key_permissions" {



    description = "key permissions"



    type = list(string)



}



variable "secret_permissions" {



    description = "secret permissions"



    type = list(string)



}



variable "storage_permissions" {



    description = "storage permissions"



    type = list(string)



}





variable "secret1_name" {



    description = "secret1_name"



    type = string



}



variable "secret1_value" {



    description = "secret1_value"



    type = string



}



variable "secret2_name" {



    description = "secret2_name"



    type = string



}



variable "secret2_value" {



    description = "secret2_value"



    type = string



}



variable "secret3_name" {



    description = "secret3_name"



    type = string



}



variable "secret3_value" {



    description = "secret3_value"



    type = string



}



variable "secret4_name" {



    description = "secret4_name"



    type = string



}



variable "secret4_value" {



    description = "secret4_value"



    type = string



}



variable "object_id" {



    description = "user id"



    type = string

}
