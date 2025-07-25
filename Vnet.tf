resource "azurerm_virtual_network" "my-vnet" {
    name = var.vnet_name
    resource_group_name = azurerm_resource_group.my-rg.name
    location = azurerm_resource_group.my-rg.location
    #address_space = var.addr_space
    address_space = var.addr_space
}

resource "azurerm_subnet" "my-sub" {
    name = var.subnet_name
    address_prefixes = var.subnet_addr
    resource_group_name = azurerm_resource_group.my-rg.name
    virtual_network_name = azurerm_virtual_network.my-vnet.name
  
}