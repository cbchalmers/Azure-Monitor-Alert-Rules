provider "azurerm" {
  subscription_id = ""
  client_id       = ""
  client_secret   = ""
  tenant_id       = ""
  features {
  }
}

resource "azurerm_resource_group" "resource_group_security_services" {
  name     = "${var.resource_prefix}-SECURITY-SERVICES-rg"
  location = var.resource_location
}