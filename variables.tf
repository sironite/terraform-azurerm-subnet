variable "azure_location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "subnet_name" {
  description = "The name of the subnet. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "resource_group_name" {
  description = "The name of the resource group in which to create the subnet. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "virtual_network_name" {
  description = "The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "address_prefixes" {
  description = "The address prefixes to use for the subnet."
  type        = list(string)
  sensitive   = false
}
variable "service_endpoints" {
  description = "The list of Service endpoints to associate with the subnet."
  type        = list(string)
  sensitive   = false
  default     = []
}
variable "service_endpoint_policy_ids" {
  description = "The list of IDs of Service Endpoint Policies to associate with the subnet."
  type        = list(string)
  sensitive   = false
  default     = null
}
variable "private_endpoint_network_policies_enabled" {
  description = "Enable or Disable network policies for the private endpoint on the subnet. Setting this to `true` will Enable the policy and setting this to `false` will Disable the policy. Defaults to `true`."
  type        = bool
  sensitive   = false
  default     = true
}
variable "private_link_service_network_policies_enabled" {
  description = "Enable or Disable network policies for the private link service on the subnet. Setting this to `true` will Enable the policy and setting this to `false` will Disable the policy. Defaults to `true`."
  type        = bool
  sensitive   = false
  default     = true
}

variable "subnet_delegation" {
  type        = map(set(object({
    name    = string
    actions = set(string)
  })))
  description = "The delegation configuration for the subnet."
}
