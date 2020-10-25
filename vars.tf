variable "resource_location" {
  description = "Desired location to provision the resources. Eg UK South"
  type        = string
#  default     = "UK South"
}

variable "resource_prefix" {
  description     = "Desired prefix for the provisioned resources. Eg CC-D-UKS"
  type            = string
#  default         = "CC-D-UKS"
}

variable "resource_tags" {
  description = "Desired tags which should be applied to all resources"
  type        = map
  default     = {
    Environment     = "Development"
    ProvisionedWith = "Terraform"
  }
}

variable "monitor_action_group_soc_full_name" {
  description     = "Full name to be used on action group"
  type            = string
#  default         = "Security Operations Center"
}

variable "monitor_action_group_soc_short_name" {
  description     = "Short name to be used on action group"
  type            = string
#  default         = "SOC"
}

variable "monitor_action_group_soc_email" {
  description     = "Email address to be used on action group"
  type            = string
#  default         = "security@contoso.com"
}