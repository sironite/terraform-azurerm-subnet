variable "subnet_id" {
  description = "The ID of the Subnet. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "network_security_group_id" {
  description = "The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created."
  type        = string
  sensitive   = false
}
variable "network_security_group_name" {
  description = "The name of the network security group "
  type        = string
  sensitive   = false
  default     = ""
}