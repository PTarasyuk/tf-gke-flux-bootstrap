module "tls_private_key" {
    source = "./modules/hashicorp-tls-keys"
    algorithm = "RSA"
}