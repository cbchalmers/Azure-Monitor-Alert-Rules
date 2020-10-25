resource "azurerm_monitor_action_group" "monitor_action_group_soc" {
  name                = var.monitor_action_group_soc_full_name
  resource_group_name = azurerm_resource_group.resource_group_security_services.name
  short_name          = var.monitor_action_group_soc_short_name
  tags                = var.resource_tags

  email_receiver {
    name          = var.monitor_action_group_soc_full_name
    email_address = var.monitor_action_group_soc_email
  }
}