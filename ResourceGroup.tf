# az
# az login
# az account set --subscription "Dep's MSDN"
# az account show


provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.20.0"
  subscription_id = "99db4c5e-6b9f-49d6-adaa-2d79d3e31ac5"
  features {}
}

variable "AzureLocation" {
  type        = string
}

variable "RGName" {
  type        = string
}

variable "AdminLogin" {
  type        = string
}

variable "AdminPassword" {
  type        = string
}

variable "DatabaseHost" {
  type        = string
}

variable "DatabaseName" {
  type        = string
}

variable "ServiceObjective" {
    type    = string
}

resource "azurerm_resource_group" "dep" {
  name     = var.RGName
  location = var.AzureLocation
}