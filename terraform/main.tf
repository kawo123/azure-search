provider "azurerm" {
    version = "=1.33.1"
}

resource "azurerm_resource_group" "search-rg" {
  name     = "${var.prefix}-rg"
  location = "${var.location}"
}

resource "azurerm_storage_account" "search-storage" {
  name                     = "${replace(lower(var.prefix), "-", "")}storage"
  resource_group_name      = "${azurerm_resource_group.search-rg.name}"
  location                 = "${azurerm_resource_group.search-rg.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "search-storage-container" {
  name                  = "${var.prefix}-container"
  resource_group_name   = "${azurerm_resource_group.search-rg.name}"
  storage_account_name  = "${azurerm_storage_account.search-storage.name}"
  container_access_type = "private"
}

resource "azurerm_search_service" "search-search" {
  name                = "${var.prefix}-search"
  resource_group_name = "${azurerm_resource_group.search-rg.name}"
  location            = "${azurerm_resource_group.search-rg.location}"
  sku                 = "standard"
}
