variable "github_repository" {
  type        = string
  description = "GitHub repository to store Flux manifests"
}

variable "target_path" {
  type        = string
  default     = "clusters"
  description = "Flux manifests subdirectory"
}

variable "private_key" {
  type        = string
  description = "The private key used to authenticate with the Git repository"
}

variable "config_host" {
  type        = string
  default     = "gke"
  description = "The url for kind"
}

variable "config_token" {
  type        = string
  default     = "token"
  description = "The token for gke"
}

variable "config_ca" {
  type        = string
  default     = "ca"
  description = "The ca for gke"
}