output "rgname" {
    value = azurerm_resource_group.my-rg.name
  
}

output "loc" {
    value = azurerm_resource_group.my-rg.location
  
}

output "addr_space" {
    value = azurerm_virtual_network.my-vnet.address_space
  
}

output "ip_config_name" {
    value = azurerm_network_interface.my-nic.ip_configuration[0].name
}

output "subnet_id" {
    value = azurerm_subnet.my-sub.id
  
}

# output "private_ip_address_allocation" {
#     value = azurerm_network_interface.my-nic.ip_configuration.
  
# }

output "public_ip_address_id" {
    value = azurerm_public_ip.my-pub-ip.id
  
}