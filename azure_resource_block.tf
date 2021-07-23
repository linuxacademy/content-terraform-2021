# Create subnet
resource "azurerm_subnet" "subnet" {
  name                 = "Robins"
  resource_group_name  = "<Add YOUR RESOURCE GROUP NAME>"
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes       = ["10.0.1.0/24"]
}
