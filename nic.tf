resource "azurerm_network_interface" "my-nic" {
    name = var.nic_name
    resource_group_name = azurerm_resource_group.my-rg.name
    location = azurerm_resource_group.my-rg.location
    ip_configuration {
      name = var.nic_ip_config
      subnet_id = azurerm_subnet.my-sub.id
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = azurerm_public_ip.my-pub-ip.id
      
    }
  
}