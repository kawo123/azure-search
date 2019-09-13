output "azure_search_service_name" {
  value = "${azurerm_search_service.search-search.name}"
}

output "azure_storage_name" {
  value = "${azurerm_storage_account.search-storage.name}"
}

output "azure_storage_primary_connection_string" {
  value = "${azurerm_storage_account.search-storage.primary_connection_string}"
}
