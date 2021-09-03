
provider "github" {}

module "github" {
    source = "./github"
    admins = var.admins
    participants = var.participants
}