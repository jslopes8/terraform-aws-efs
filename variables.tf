variable "enabled" {
    type    = bool
    default = true
}
variable "name" {
    type    = string
}
variable "creation_token" {
    type    = string
}
variable "performance_mode" {
    type    = string
    default = "generalPurpose"
}
variable "throughput_mode" {
    type    = string
}
variable "encrypted" {
    type    = bool
    default = true
}
variable "default_tags" {
    type    = map(string)
    default = {}
}
variable "subnet_id" {
    type    = list(string)
}
variable "security_groups" {
    type    = list(string)
}
