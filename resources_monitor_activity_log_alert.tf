data "azurerm_subscription" "current" {
}

resource "azurerm_monitor_activity_log_alert" "activity_log_alert_cu_security_group" {
  name                = "Activity Log Alert for Create or Update Security Group"
  resource_group_name = azurerm_resource_group.resource_group_security_services.name
  scopes              = [data.azurerm_subscription.current.id]
  description         = "Monitoring for Create or Update Network Security Group events gives insight into network access changes and may reduce the time it takes to detect suspicious activity"
  tags                = var.resource_tags
  criteria {
    category       = "Security"
    operation_name = "Microsoft.Network/networkSecurityGroups/write"
  }

  action {
    action_group_id = azurerm_monitor_action_group.monitor_action_group_soc.id
  }
}

resource "azurerm_monitor_activity_log_alert" "activity_log_alert_d_security_group" {
  name                = "Activity Log Alert for Delete Network Security Group"
  resource_group_name = azurerm_resource_group.resource_group_security_services.name
  scopes              = [data.azurerm_subscription.current.id]
  description         = "Monitoring for Delete Network Security Group events gives insight into network access changes and may reduce the time it takes to detect suspicious activity"
  tags                = var.resource_tags
  criteria {
    category       = "Security"
    operation_name = "Microsoft.Network/networkSecurityGroups/delete"
  }

  action {
    action_group_id = azurerm_monitor_action_group.monitor_action_group_soc.id
  }
}

resource "azurerm_monitor_activity_log_alert" "activity_log_alert_cu_security_group_rule" {
  name                = "Activity Log Alert for Create or Update Network Security Group Rule"
  resource_group_name = azurerm_resource_group.resource_group_security_services.name
  scopes              = [data.azurerm_subscription.current.id]
  description         = "Monitoring for Create or Update Network Security Group Rule events gives insight into network access changes and may reduce the time it takes to detect suspicious activity"
  tags                = var.resource_tags
  criteria {
    category       = "Security"
    operation_name = "Microsoft.Network/networkSecurityGroups/securityRules/write"
  }

  action {
    action_group_id = azurerm_monitor_action_group.monitor_action_group_soc.id
  }
}

resource "azurerm_monitor_activity_log_alert" "activity_log_alert_d_security_group_rule" {
  name                = "Activity Log Alert for Delete Network Security Group Rule"
  resource_group_name = azurerm_resource_group.resource_group_security_services.name
  scopes              = [data.azurerm_subscription.current.id]
  description         = "Monitoring for Delete Network Security Group Rule events gives insight into network access changes and may reduce the time it takes to detect suspicious activity"
  tags                = var.resource_tags
  criteria {
    category       = "Security"
    operation_name = "Microsoft.Network/networkSecurityGroups/securityRules/delete"
  }

  action {
    action_group_id = azurerm_monitor_action_group.monitor_action_group_soc.id
  }
}

resource "azurerm_monitor_activity_log_alert" "activity_log_alert_cu_security_solution" {
  name                = "Activity Log Alert for Create or Update Security Solution"
  resource_group_name = azurerm_resource_group.resource_group_security_services.name
  scopes              = [data.azurerm_subscription.current.id]
  description         = "Monitoring for Create or Update Security Solution events gives insight into changes to the active security solutions and may reduce the time it takes to detect suspicious activity"
  tags                = var.resource_tags
  criteria {
    category       = "Security"
    operation_name = "Microsoft.Security/securitySolutions/write"
  }

  action {
    action_group_id = azurerm_monitor_action_group.monitor_action_group_soc.id
  }
}

resource "azurerm_monitor_activity_log_alert" "activity_log_alert_d_security_solution" {
  name                = "Activity Log Alert for Delete Security Solution"
  resource_group_name = azurerm_resource_group.resource_group_security_services.name
  scopes              = [data.azurerm_subscription.current.id]
  description         = "Monitoring for Delete Security Solution events gives insight into changes to the active security solutions and may reduce the time it takes to detect suspicious activity"
  tags                = var.resource_tags
  criteria {
    category       = "Security"
    operation_name = "Microsoft.Security/securitySolutions/delete"
  }

  action {
    action_group_id = azurerm_monitor_action_group.monitor_action_group_soc.id
  }
}

resource "azurerm_monitor_activity_log_alert" "activity_log_alert_cud_sql_firewall_rule" {
  name                = "Activity Log Alert for Create, Update or Delete SQL Server Firewall Rule"
  resource_group_name = azurerm_resource_group.resource_group_security_services.name
  scopes              = [data.azurerm_subscription.current.id]
  description         = "Monitoring for Create or Update or Delete SQL Server Firewall Rule events gives insight into network access changes and may reduce the time it takes to detect suspicious activity"
  tags                = var.resource_tags
  criteria {
    category       = "Security"
    operation_name = "Microsoft.Sql/servers/firewallRules/write"
  }

  action {
    action_group_id = azurerm_monitor_action_group.monitor_action_group_soc.id
  }
}

resource "azurerm_monitor_activity_log_alert" "activity_log_alert_cu_security_policy" {
  name                = "Activity Log Alert for Create or Update Security Policy"
  resource_group_name = azurerm_resource_group.resource_group_security_services.name
  scopes              = [data.azurerm_subscription.current.id]
  description         = "Monitoring for Update Security Policy events gives insight into changes to security policy and may reduce the time it takes to detect suspicious activity"
  tags                = var.resource_tags
  criteria {
    category       = "Security"
    operation_name = "Microsoft.Security/policies/write"
  }

  action {
    action_group_id = azurerm_monitor_action_group.monitor_action_group_soc.id
  }
}