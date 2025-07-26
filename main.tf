resource "azurerm_public_ip" "pip_block" {
    for_each = var.pip_map
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    allocation_method = "Static"
  
}

