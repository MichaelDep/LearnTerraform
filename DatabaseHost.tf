provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.20.0"
  alias  = "dbhost"
  features {}
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

resource "azurerm_sql_server" "dep" {
  name                         = var.DatabaseHost
  resource_group_name          = azurerm_resource_group.dep.name
  location                     = azurerm_resource_group.dep.location
  version                      = "12.0"
  administrator_login          = var.AdminLogin
  administrator_login_password = var.AdminPassword

  tags = {
    environment = "production"
  }
}