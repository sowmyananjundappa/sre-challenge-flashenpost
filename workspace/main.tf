module "dev-flaschenpost" {
  source = "../module"

  resource_group_name      = "sre-challenge-flashenpost"
  storage_account_name     = "srechallengeflaschenpost"
  location                 = "westeurope"
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier              = "Hot"
  min_tls_version          = "TLS1_2"
  soft_delete_retention    = "31"
  container = {
    name = "sre"
    type = "private"
  }
  tags = {
    department = "SRE"
  }
}