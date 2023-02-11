resource "azurerm_resource_group" "azurerm_container_registry_resource_group1" {
  name     = "Container 2023!"
  location = "West Europe"
}


resource "azurerm_container_registry" "bobby_acr_reference" {
  name                = "containerRegistry1"
  resource_group_name = azurerm_resource_group.azurerm_container_registry_resource_group1.name
  location            = azurerm_resource_group.azurerm_container_registry_resource_group1.location
  sku                 = "Basic"
 
}