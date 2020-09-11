provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.20.0"
  alias  = "database"
  subscription_id = "99db4c5e-6b9f-49d6-adaa-2d79d3e31ac5"
  features {}
}

resource "azurerm_sql_database" "dep" {
  name                = var.DatabaseName
  resource_group_name = azurerm_resource_group.dep.name
  location            = azurerm_resource_group.dep.location
  server_name         = azurerm_sql_server.dep.name
  requested_service_objective_name = var.ServiceObjective
  }
