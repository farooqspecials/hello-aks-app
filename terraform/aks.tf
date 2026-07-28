resource "azurerm_kubernetes_cluster" "aks" {
  name                = "hello-aks-cluster"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  dns_prefix          = "helloaks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  sku_tier = "Free"
}