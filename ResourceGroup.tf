# az
# az login
# az account set --subscription "Dep's MSDN"
# az account show


provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.20.0"
  features {}
}

variable "AzureLocation" {
  type        = string
}

variable "RGName" {
  type        = string
}

resource "azurerm_resource_group" "dep" {
  name     = var.RGName
  location = var.AzureLocation
}