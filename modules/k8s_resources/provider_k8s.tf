variable "username" {
  default = "username"
  
}

variable "password" {}
variable "ip" {}
variable "client_key" {}
variable "cluster_certificate" {}
variable client_certificate {}

provider "kubernetes" {
  ip   = "${var.ip}"
  username = "${var.username}"
  password = "${var.password}"


client_certificate     = "${base64decode(var.client_certificate)}"
client_key             = "${base64decode(var.client_key)}"
cluster_certificate = "${base64decode(var.cluster_ca_certificate)}"
}