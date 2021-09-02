
provider "github" {
    token = "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"
}

module "github" {
    source = "./github"
    admins = var.admins
    participants = var.participants
}