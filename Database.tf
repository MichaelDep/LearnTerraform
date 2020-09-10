provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.20.0"
  alias  = "database"
  features {}
}

variable "DatabaseName" {
  type        = string
}

variable "ServiceObjective" {
    type    = string
}

resource "azurerm_sql_database" "dep" {
  name                = var.DatabaseName
  resource_group_name = azurerm_resource_group.dep.name
  location            = azurerm_resource_group.dep.location
  server_name         = azurerm_sql_server.dep.name
  requested_service_objective_name = var.ServiceObjective
  }
