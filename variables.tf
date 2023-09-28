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
variable "resource-group-name" {
    type = string
    description = "Resource Group Name"
}

variable "location" {
    type = string
    description = "Location for deployment"
}

variable "vnet-name" {
    type = string
    description = "Virtual Network Name"
}

variable "vnet-address-space" {
    type = list(string)
    description = "Address space of virtual network"
}
variable "subnet-name" {
    type = string
    description = "Name of vnet subnet"
}

variable "subnet-address-prefix" {
    type = list(string)
    description = "Address prefix of vnet subnet"
}

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


