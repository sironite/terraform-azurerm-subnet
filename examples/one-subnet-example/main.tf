module "subnet" {
  source  = "sironite/subnet/azurerm"
  version = "x.x.x"

  azure_location       = var.azure_location
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  subnet_name          = var.subnet_name
  address_prefixes     = var.address_prefixes

  nsg_resource_group_name = var.nsg_resource_group_name
  network_security_group_name = var.network_security_group_name
}