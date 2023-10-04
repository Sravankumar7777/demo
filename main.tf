terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.67.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}
module "contos" {
    source = "./contos"
    managementgroup = var.managementgroup
    
}
module "decom" {
    source = "./contos/decom"
    childgroupA0 =var.childgroupA0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
}
module "platform" {
    source = "./contos/platform"
    childgroupB0 = var.childgroupB0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "connectivity" {
    source = "./contos/platform/connectivity"
    childgroupB1 = var.childgroupB1
    childgroupB0-ID = module.platform.childgroupB0-ID
    
}
module "identity" {
    source = "./contos/platform/identity"
    childgroupB3 = var.childgroupB3
    childgroupB0-ID = module.platform.childgroupB0-ID
}
module "management" {
    source = "./contos/platform/management"
    childgroupB2 = var.childgroupB2
    childgroupB0-ID = module.platform.childgroupB0-ID
    
}
module "sandbox" {
    source = "./contos/sandbox"
    childgroupC0 = var.childgroupC0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "workloads" {
    source = "./contos/workloads"
    childgroupD0 = var.childgroupD0
    managementgroup-parent-ID = module.contos.managementgroup-parent-ID
    
}
module "businessunit1" {
    source = "./contos/workloads/bs1"
    childgroupD1 = var.childgroupD1
    childgroupD0-ID = module.workloads.childgroupD0-ID
    
}
module "businessunit2" {
    source = "./contos/workloads/bs2"
    childgroupD2 = var.childgroupD2
    childgroupD0-ID = module.workloads.childgroupD0-ID
    
}

module "resourcegroup" {
  source = "./contos/platform/connectivity/storage/resourcegroup"
  rg-name = var.rg-name
  location= var.location
  
}

module "storage" {
  source = "./contos/platform/connectivity/storage/storage"
  rg-name = module.resourcegroup.rg-name
  location = module.resourcegroup.location
  storagename = var.storagename
  strgcontname = var.strgcontname
  blobfilename =var.blobfilename

}
module "datafactory" {
  source = "./contos/platform/connectivity/storage/datafactory"
  dfname= var.dfname
  rg-name = module.resourcegroup.rg-name
  location = module.resourcegroup.location
 
}
 module "cosmosdb" {
  source = "./contos/platform/connectivity/storage/cosmosdb"
  cosmosdbname =var.cosmosdbname
  cosmos-database =var.cosmos-database
  cosmoscont-name =var.cosmoscont-name
  rg-name = module.resourcegroup.rg-name
  location = module.resourcegroup.location
 }
