variable "path" {
  type    = string
  default = "C:\Users\juppe.agon\Documents\terraform\GKE"
}

provider "google" {
  credentials = "${file("${var.path}/projet-juppe-9231a1e7e894.json")}" 
  project     = "projet-juppe"
  region      = "europe-west3"
}
