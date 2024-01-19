# Terraform Flux Bootstrap Git Module

This Terraform module creates a Git repository to be used as a source for Flux Bootstrap.

## Usage

```hcl
module "flux_bootstrap" {
  source            = "./modules/fluxcd-flux-bootstrap"
  github_repository = "${var.GITHUB_OWNER}/${var.FLUX_GITHUB_REPO}"
  private_key       = module.tls_private_key.private_key_pem
  config_host       = module.gke_cluster.config_host
  config_token       = module.gke_cluster.config_token
  config_ca         = module.gke_cluster.config_ca
}
```

## Inputs

- `github_repository` - The name of the Git repository to be created.
- `target_path` - The path to clone the Git repository into. Default value is clusters.
- `private_key` - The SSH private key to use for Git operations.
- `config_path` - The path to the Kubernetes configuration file. Default value is ~/.kube/config.

## Outputs

- `flux_namespace` - GitHub repository to store Flux manifests.

License
This module is licensed under the MIT License. See the LICENSE file for details.
