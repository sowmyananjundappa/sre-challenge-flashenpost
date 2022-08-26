resource "azurerm_resource_group" "sre_challenge_flashenpost" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "random_string" "random" {
  length  = 6
  special = false
  upper   = false
}

resource "azurerm_storage_account" "srechallengeforflaschenpost" {
  name                      = (var.storage_account_name == null ? random_string.random.result : var.storage_account_name)
  resource_group_name       = azurerm_resource_group.sre_challenge_flashenpost.name
  location                  = var.location
  account_kind              = var.account_kind
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  access_tier               = var.access_tier
  enable_https_traffic_only = true
  min_tls_version           = var.min_tls_version

  blob_properties {
    delete_retention_policy {
      days = var.soft_delete_retention
    }
  }
  tags = var.tags
}

resource "azurerm_storage_container" "srechallengeforflaschenpost" {
  name                  = var.container.name
  storage_account_name  = azurerm_storage_account.srechallengeforflaschenpost.name
  container_access_type = var.container.type
}
