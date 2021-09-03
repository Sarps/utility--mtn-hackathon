
variable "participants" {
    type = list(string)
}

variable "admins" {
    type = list(string)
}

variable "github_owner" {
    default = ""
}
variable "github_token" {
    default = ""
}