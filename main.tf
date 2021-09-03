
provider "github" {
    token = var.github_token
    owner = var.github_owner
}

module "github" {
    source = "./github"
    admins = var.admins
    participants = var.participants
}