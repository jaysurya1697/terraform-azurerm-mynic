resource "azurerm_public_ip" "my-pub-ip" {
    name = var.pub_ip_name
    resource_group_name = azurerm_resource_group.my-rg.name
    location = azurerm_resource_group.my-rg.location
    allocation_method = var.allocation_method
    domain_name_label = "app1-vm-${random_string.myrandom.id}"
  
}