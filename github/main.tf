
resource "github_membership" "admins" {
    for_each = toset(var.admins)
    username = each.value
    role = "admin"
}

locals {
    members = toset(var.participants)
}

resource "github_membership" "members" {
    for_each = local.members
    username = each.value
}

resource "github_repository" "this" {
    for_each = local.members
    name = "ayoba_${each.value}"
    visibility = "private"
}

resource "github_repository_collaborator" "repo_user" {
    depends_on = [github_membership.members, github_repository.this]
    for_each = local.members
    repository = "ayoba_${each.value}"
    username   = each.value
    permission = "maintain"
}
