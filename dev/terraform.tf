provider azurerm {
  version = "~> 2.37.0"
  features {}
}

terraform {
  backend azurerm {
    resource_group_name  = "GitHubActionsTest"
    storage_account_name = "githubactionstestsa"
    container_name       = "tfstate"
    key                  = "dev.githubactionstest.tfstate"
  }
}

module dev {
  source = "../common"

  resource_group_name  = "GitHubActionsTest"
  storage_account_name = "githubactionstestsa"
}
