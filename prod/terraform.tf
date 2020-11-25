provider azurerm {
  version = "~> 2.37.0"
  features {}
}

terraform {
  backend azurerm {
    resource_group_name  = "GitHubActionsTest"
    storage_account_name = "githubactionstestpsa"
    container_name       = "tfstate"
    key                  = "prod.githubactionstest.tfstate"
  }
}

module dev {
  source = "../common"

  resource_group_name  = "GitHubActionsTest"
  storage_account_name = "githubactionstestpsa"
}
