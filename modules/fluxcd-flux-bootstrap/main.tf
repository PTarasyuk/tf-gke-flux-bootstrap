provider "flux" {
  kubernetes = {
    host                   = var.config_host
    token                  = var.config_token
    cluster_ca_certificate = var.config_ca
  }
  git = {
    url = "ssh://git@github.com/${var.github_repository}.git"
    ssh = {
      username = "git"
      private_key = var.private_key
    }
  }
}

resource "flux_bootstrap_git" "this" {
  path = var.target_path
}